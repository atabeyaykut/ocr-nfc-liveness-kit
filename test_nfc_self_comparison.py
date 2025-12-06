#!/usr/bin/env python3
"""
TEST: NFC fotoğrafını kendi kendisiyle karşılaştır
Beklenen: %95+ similarity
Eğer düşük çıkarsa: Preprocessing problemi!
"""

import onnxruntime as ort
import numpy as np
from PIL import Image
import sys

def apply_gamma_correction(img_array, gamma=1.0):
    """Apply gamma correction to image"""
    # Normalize to [0, 1]
    normalized = img_array / 255.0
    # Apply gamma
    corrected = np.power(normalized, gamma)
    # Back to [0, 255]
    return (corrected * 255).astype(np.uint8)

def apply_mean_std_normalization(img_array):
    """Apply per-channel mean/std normalization"""
    target_mean = 128
    target_std = 50
    
    result = np.zeros_like(img_array, dtype=np.float32)
    
    for c in range(3):
        channel = img_array[:, :, c].astype(np.float32)
        mean = np.mean(channel)
        std = np.std(channel)
        
        if std > 0:
            normalized = (channel - mean) / std
            result[:, :, c] = (normalized * target_std) + target_mean
        else:
            result[:, :, c] = target_mean
    
    return result.astype(np.uint8)

def preprocess_image(image_path, face_bbox=None):
    """Preprocess image for FaceNet"""
    print(f"📸 Loading image: {image_path}")
    
    # Load image
    img = Image.open(image_path).convert('RGB')
    print(f"📐 Original size: {img.size}")
    
    # Crop face if bbox provided
    if face_bbox:
        left, top, width, height = face_bbox['left'], face_bbox['top'], face_bbox['width'], face_bbox['height']
        
        # Add 20% margin
        margin_w = int(width * 0.2)
        margin_h = int(height * 0.2)
        
        crop_left = max(0, left - margin_w // 2)
        crop_top = max(0, top - margin_h // 2)
        crop_right = min(img.width, left + width + margin_w // 2)
        crop_bottom = min(img.height, top + height + margin_h // 2)
        
        print(f"✂️ Cropping face: ({crop_left}, {crop_top}, {crop_right}, {crop_bottom})")
        img = img.crop((crop_left, crop_top, crop_right, crop_bottom))
        print(f"📐 After crop: {img.size}")
    
    # Resize to 160x160
    img = img.resize((160, 160), Image.LANCZOS)
    print(f"📐 Resized to: {img.size}")
    
    # Convert to numpy array
    img_array = np.array(img)
    
    # Calculate overall brightness
    overall_mean = np.mean(img_array)
    print(f"🔆 Overall brightness: {overall_mean:.2f}/255")
    
    # Apply adaptive gamma correction
    if overall_mean > 140:
        gamma = 1.2 + ((overall_mean - 140) / 115) * 1.3
        print(f"⚠️ OVEREXPOSED! Applying gamma={gamma:.2f} to darken")
        img_array = apply_gamma_correction(img_array, gamma)
        print(f"✅ After gamma: {np.mean(img_array):.2f}/255")
    elif overall_mean < 110:
        gamma = 0.4 + (overall_mean / 110) * 0.6
        print(f"⚠️ UNDEREXPOSED! Applying gamma={gamma:.2f} to brighten")
        img_array = apply_gamma_correction(img_array, gamma)
        print(f"✅ After gamma: {np.mean(img_array):.2f}/255")
    else:
        print(f"✅ Normal brightness, no gamma correction")
    
    # Apply mean/std normalization
    print("🎨 Applying mean/std normalization...")
    img_array = apply_mean_std_normalization(img_array)
    
    # Verify normalization
    for c in range(3):
        channel_mean = np.mean(img_array[:, :, c])
        channel_std = np.std(img_array[:, :, c])
        print(f"  Channel {c}: mean={channel_mean:.2f} ✅, std={channel_std:.2f} ✅")
    
    # Convert to float32 and normalize to [-1, 1]
    img_array = img_array.astype(np.float32)
    img_array = (img_array - 128) / 128
    
    # Add batch dimension and convert to NHWC format
    img_array = np.expand_dims(img_array, axis=0)  # [1, 160, 160, 3]
    
    print(f"✅ Preprocessing complete: {img_array.shape}")
    return img_array

def extract_embedding(session, img_array):
    """Extract face embedding using FaceNet"""
    print("🧠 Running ONNX inference...")
    
    # Get input name
    input_name = session.get_inputs()[0].name
    
    # Run inference
    outputs = session.run(None, {input_name: img_array})
    embedding = outputs[0][0]  # [128]
    
    # L2 normalization
    norm = np.linalg.norm(embedding)
    embedding = embedding / norm
    
    print(f"✅ Embedding extracted: shape={embedding.shape}, norm={np.linalg.norm(embedding):.4f}")
    return embedding

def cosine_similarity(embed1, embed2):
    """Calculate cosine similarity between two embeddings"""
    return np.dot(embed1, embed2)

def main():
    print("=" * 50)
    print("🧪 NFC SELF-COMPARISON TEST")
    print("=" * 50)
    
    # Paths
    nfc_photo_path = "./artifacts/nfc_photo_for_test.jpg"
    model_path = "./android/app/src/main/assets/facenet.onnx"
    
    # Face bounding box from logs
    face_bbox = {
        'left': 21,
        'top': 59,
        'width': 203,
        'height': 199
    }
    
    try:
        # Load ONNX model
        print(f"\n🤖 Loading FaceNet model: {model_path}")
        session = ort.InferenceSession(model_path)
        print("✅ Model loaded successfully")
        
        # Process image TWICE (same preprocessing)
        print("\n📸 Processing image #1 (first time)...")
        img1 = preprocess_image(nfc_photo_path, face_bbox)
        embedding1 = extract_embedding(session, img1)
        
        print("\n📸 Processing image #2 (second time - SAME IMAGE)...")
        img2 = preprocess_image(nfc_photo_path, face_bbox)
        embedding2 = extract_embedding(session, img2)
        
        # Calculate similarity
        print("\n📏 Calculating cosine similarity...")
        similarity = cosine_similarity(embedding1, embedding2)
        
        print("\n" + "=" * 50)
        print("🎯 RESULT:")
        print(f"  Similarity: {similarity * 100:.2f}%")
        print(f"  Expected: >95%")
        
        if similarity > 0.95:
            print("  Status: ✅ PASS - Preprocessing is CONSISTENT!")
        else:
            print("  Status: ❌ FAIL - Preprocessing issue detected!")
            print("  Problem: Same image should give >95% similarity")
        print("=" * 50)
        
        # Additional check: embeddings should be IDENTICAL
        embedding_diff = np.mean(np.abs(embedding1 - embedding2))
        print(f"\n🔍 Embedding difference: {embedding_diff:.6f}")
        if embedding_diff < 0.0001:
            print("✅ Embeddings are IDENTICAL (preprocessing is deterministic)")
        else:
            print("⚠️ Embeddings differ slightly (non-deterministic preprocessing)")
        
    except FileNotFoundError as e:
        print(f"❌ Error: File not found - {e}")
        print(f"Please ensure:")
        print(f"  1. NFC photo exists at: {nfc_photo_path}")
        print(f"  2. FaceNet model exists at: {model_path}")
        sys.exit(1)
    except Exception as e:
        print(f"❌ Error: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)

if __name__ == "__main__":
    main()
