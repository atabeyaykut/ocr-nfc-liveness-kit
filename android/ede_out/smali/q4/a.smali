.class public abstract Lq4/a;
.super Lq4/m;
.source "SourceFile"

# interfaces
.implements Lq4/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    invoke-direct {p0, v0}, Lq4/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 58
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x3

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lz3/b$a;->x0(Landroid/os/IBinder;)Lz3/b;

    move-result-object v0

    sget-object v2, Lq4/k;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v5, Lq4/n;->a:I

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v5, p2

    invoke-interface {v2, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 2
    :goto_0
    check-cast v2, Lq4/k;

    move-object/from16 v5, p0

    check-cast v5, Ly7/a;

    .line 3
    iget v6, v2, Lq4/k;->a:I

    const/4 v7, -0x1

    iget-object v8, v5, Ly7/a;->a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    iget v9, v2, Lq4/k;->c:I

    iget v10, v2, Lq4/k;->b:I

    if-eq v6, v7, :cond_7

    const/16 v7, 0x11

    if-eq v6, v7, :cond_4

    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    const v7, 0x32315659

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported image format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lq4/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v0}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v0}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 5
    :goto_2
    iget-object v5, v5, Ly7/a;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v10, v9, v0, v8}, Lcom/google/android/libraries/barhopper/BarhopperV2;->b(IILjava/nio/ByteBuffer;Lcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v5, v10, v9, v0, v8}, Lcom/google/android/libraries/barhopper/BarhopperV2;->c(II[BLcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v10, v9, v6, v8}, Lcom/google/android/libraries/barhopper/BarhopperV2;->c(II[BLcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    goto :goto_3

    .line 6
    :cond_7
    iget-object v5, v5, Ly7/a;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    invoke-static {v5}, Lr3/r;->i(Ljava/lang/Object;)V

    invoke-static {v0}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0, v8}, Lcom/google/android/libraries/barhopper/BarhopperV2;->d(Landroid/graphics/Bitmap;Lcom/google/android/libraries/barhopper/RecognitionOptions;)[Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v6, Lb8/d;->a:Lb8/d;

    .line 8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v2, v2, Lq4/k;->d:I

    if-nez v2, :cond_8

    const/4 v6, 0x0

    goto :goto_6

    :cond_8
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-int v7, v10

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    neg-int v11, v9

    int-to-float v11, v11

    div-float/2addr v11, v8

    invoke-virtual {v6, v7, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-int/lit8 v7, v2, 0x5a

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    rem-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_9

    move v11, v9

    goto :goto_4

    :cond_9
    move v11, v10

    :goto_4
    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    move v9, v10

    :goto_5
    int-to-float v7, v11

    div-float/2addr v7, v8

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    :goto_6
    array-length v7, v0

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_1f

    aget-object v9, v0, v8

    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    if-eqz v10, :cond_c

    if-eqz v6, :cond_c

    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    :goto_8
    iget-object v12, v9, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length v13, v12

    if-ge v11, v13, :cond_b

    add-int v13, v11, v11

    aget-object v12, v12, v11

    iget v14, v12, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    aput v14, v10, v13

    add-int/2addr v13, v1

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    aput v12, v10, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v11, 0x0

    :goto_9
    iget-object v12, v9, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length v13, v12

    if-ge v11, v13, :cond_c

    add-int v14, v11, v2

    rem-int/2addr v14, v13

    aget-object v12, v12, v14

    add-int v13, v11, v11

    aget v14, v10, v13

    float-to-int v14, v14

    iput v14, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v13, v1

    aget v13, v10, v13

    float-to-int v13, v13

    iput v13, v12, Landroid/graphics/Point;->y:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_c
    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->email:Lcom/google/android/libraries/barhopper/Barcode$Email;

    if-eqz v10, :cond_d

    new-instance v11, Lq4/u;

    iget v12, v10, Lcom/google/android/libraries/barhopper/Barcode$Email;->type:I

    iget-object v13, v10, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    iget-object v14, v10, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14, v10}, Lq4/u;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v11

    goto :goto_a

    :cond_d
    const/16 v22, 0x0

    :goto_a
    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->phone:Lcom/google/android/libraries/barhopper/Barcode$Phone;

    if-eqz v10, :cond_e

    new-instance v11, Lq4/x;

    iget v12, v10, Lcom/google/android/libraries/barhopper/Barcode$Phone;->type:I

    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Lq4/x;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v11

    goto :goto_b

    :cond_e
    const/16 v23, 0x0

    :goto_b
    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    if-eqz v10, :cond_f

    new-instance v11, Lq4/y;

    iget-object v12, v10, Lcom/google/android/libraries/barhopper/Barcode$Sms;->message:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Lq4/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v11

    goto :goto_c

    :cond_f
    const/16 v24, 0x0

    :goto_c
    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    if-eqz v10, :cond_10

    new-instance v11, Lq4/a0;

    iget-object v12, v10, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    iget-object v13, v10, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    iget v10, v10, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    invoke-direct {v11, v12, v13, v10}, Lq4/a0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v25, v11

    goto :goto_d

    :cond_10
    const/16 v25, 0x0

    :goto_d
    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->url:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    if-eqz v10, :cond_11

    new-instance v11, Lq4/z;

    iget-object v12, v10, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;->title:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;->url:Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Lq4/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v26, v11

    goto :goto_e

    :cond_11
    const/16 v26, 0x0

    :goto_e
    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    if-eqz v10, :cond_12

    new-instance v11, Lq4/v;

    iget-wide v12, v10, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    iget-wide v14, v10, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    invoke-direct {v11, v12, v13, v14, v15}, Lq4/v;-><init>(DD)V

    move-object/from16 v27, v11

    goto :goto_f

    :cond_12
    const/16 v27, 0x0

    :goto_f
    iget-object v10, v9, Lcom/google/android/libraries/barhopper/Barcode;->calendarEvent:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    if-eqz v10, :cond_15

    new-instance v19, Lq4/r;

    iget-object v12, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    iget-object v13, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->description:Ljava/lang/String;

    iget-object v14, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->location:Ljava/lang/String;

    iget-object v15, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->organizer:Ljava/lang/String;

    iget-object v11, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->status:Ljava/lang/String;

    iget-object v4, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->start:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    if-nez v4, :cond_13

    move-object/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 v40, v6

    move/from16 v41, v7

    move-object/from16 v17, v11

    const/4 v3, 0x0

    goto :goto_10

    .line 11
    :cond_13
    new-instance v16, Lq4/q;

    iget v1, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->year:I

    iget v3, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->month:I

    move-object/from16 p1, v0

    iget v0, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->day:I

    move/from16 p2, v2

    iget v2, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->hours:I

    move-object/from16 v40, v6

    iget v6, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->minutes:I

    move/from16 v41, v7

    iget v7, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->seconds:I

    move-object/from16 v17, v11

    iget-boolean v11, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->isUtc:Z

    iget-object v4, v4, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->rawValue:Ljava/lang/String;

    move-object/from16 v31, v16

    move-object/from16 v32, v4

    move/from16 v33, v1

    move/from16 v34, v3

    move/from16 v35, v0

    move/from16 v36, v2

    move/from16 v37, v11

    move/from16 v38, v6

    move/from16 v39, v7

    invoke-direct/range {v31 .. v39}, Lq4/q;-><init>(Ljava/lang/String;IIIIZII)V

    move-object/from16 v3, v16

    .line 12
    :goto_10
    iget-object v0, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->end:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    if-nez v0, :cond_14

    move/from16 v42, v8

    const/16 v18, 0x0

    goto :goto_11

    .line 13
    :cond_14
    new-instance v1, Lq4/q;

    iget v2, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->year:I

    iget v4, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->month:I

    iget v6, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->day:I

    iget v7, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->hours:I

    iget v10, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->minutes:I

    iget v11, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->seconds:I

    move/from16 v42, v8

    iget-boolean v8, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->isUtc:Z

    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;->rawValue:Ljava/lang/String;

    move-object/from16 v31, v1

    move-object/from16 v32, v0

    move/from16 v33, v2

    move/from16 v34, v4

    move/from16 v35, v6

    move/from16 v36, v7

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v11

    invoke-direct/range {v31 .. v39}, Lq4/q;-><init>(Ljava/lang/String;IIIIZII)V

    move-object/from16 v18, v1

    :goto_11
    move-object/from16 v0, v17

    move-object/from16 v11, v19

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 14
    invoke-direct/range {v11 .. v18}, Lq4/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lq4/q;Lq4/q;)V

    move-object/from16 v28, v19

    goto :goto_12

    :cond_15
    move-object/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    const/16 v28, 0x0

    :goto_12
    iget-object v0, v9, Lcom/google/android/libraries/barhopper/Barcode;->contactInfo:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    if-eqz v0, :cond_1d

    new-instance v1, Lq4/s;

    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->name:Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    if-eqz v2, :cond_16

    new-instance v3, Lq4/w;

    iget-object v11, v2, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->formattedName:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->pronunciation:Ljava/lang/String;

    iget-object v13, v2, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->prefix:Ljava/lang/String;

    iget-object v14, v2, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->first:Ljava/lang/String;

    iget-object v15, v2, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->middle:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->last:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->suffix:Ljava/lang/String;

    move-object v10, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Lq4/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v3

    goto :goto_13

    :cond_16
    const/4 v11, 0x0

    :goto_13
    iget-object v12, v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->organization:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->phones:[Lcom/google/android/libraries/barhopper/Barcode$Phone;

    if-nez v2, :cond_17

    const/4 v14, 0x0

    goto :goto_15

    :cond_17
    array-length v3, v2

    new-array v3, v3, [Lq4/x;

    const/4 v4, 0x0

    :goto_14
    array-length v6, v2

    if-ge v4, v6, :cond_18

    new-instance v6, Lq4/x;

    aget-object v7, v2, v4

    iget v8, v7, Lcom/google/android/libraries/barhopper/Barcode$Phone;->type:I

    iget-object v7, v7, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lq4/x;-><init>(ILjava/lang/String;)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_18
    move-object v14, v3

    :goto_15
    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->emails:[Lcom/google/android/libraries/barhopper/Barcode$Email;

    if-nez v2, :cond_19

    const/4 v15, 0x0

    goto :goto_17

    :cond_19
    array-length v3, v2

    new-array v3, v3, [Lq4/u;

    const/4 v4, 0x0

    :goto_16
    array-length v6, v2

    if-ge v4, v6, :cond_1a

    new-instance v6, Lq4/u;

    aget-object v7, v2, v4

    iget v8, v7, Lcom/google/android/libraries/barhopper/Barcode$Email;->type:I

    iget-object v10, v7, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    iget-object v15, v7, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

    invoke-direct {v6, v8, v10, v15, v7}, Lq4/u;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1a
    move-object v15, v3

    :goto_17
    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->addresses:[Lcom/google/android/libraries/barhopper/Barcode$Address;

    if-nez v0, :cond_1b

    const/16 v17, 0x0

    goto :goto_19

    :cond_1b
    array-length v3, v0

    new-array v3, v3, [Lq4/p;

    const/4 v4, 0x0

    :goto_18
    array-length v6, v0

    if-ge v4, v6, :cond_1c

    new-instance v6, Lq4/p;

    aget-object v7, v0, v4

    iget v8, v7, Lcom/google/android/libraries/barhopper/Barcode$Address;->type:I

    iget-object v7, v7, Lcom/google/android/libraries/barhopper/Barcode$Address;->addressLines:[Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lq4/p;-><init>(I[Ljava/lang/String;)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_1c
    move-object/from16 v17, v3

    :goto_19
    move-object v10, v1

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lq4/s;-><init>(Lq4/w;Ljava/lang/String;Ljava/lang/String;[Lq4/x;[Lq4/u;[Ljava/lang/String;[Lq4/p;)V

    move-object/from16 v29, v1

    goto :goto_1a

    :cond_1d
    const/16 v29, 0x0

    :goto_1a
    iget-object v0, v9, Lcom/google/android/libraries/barhopper/Barcode;->driverLicense:Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;

    if-eqz v0, :cond_1e

    new-instance v1, Lq4/t;

    iget-object v2, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->gender:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    move-object/from16 v31, v5

    iget-object v5, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    move-object/from16 v43, v1

    move-object/from16 v44, v2

    move-object/from16 v45, v3

    move-object/from16 v46, v4

    move-object/from16 v47, v6

    move-object/from16 v48, v7

    move-object/from16 v49, v8

    move-object/from16 v50, v10

    move-object/from16 v51, v11

    move-object/from16 v52, v12

    move-object/from16 v53, v13

    move-object/from16 v54, v14

    move-object/from16 v55, v15

    move-object/from16 v56, v5

    move-object/from16 v57, v0

    invoke-direct/range {v43 .. v57}, Lq4/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v30, v1

    goto :goto_1b

    :cond_1e
    move-object/from16 v31, v5

    const/16 v30, 0x0

    :goto_1b
    new-instance v0, Lq4/b0;

    iget v1, v9, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    iget-object v2, v9, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    iget-object v3, v9, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/libraries/barhopper/Barcode;->rawBytes:[B

    iget-object v5, v9, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    iget v6, v9, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    move-object v15, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v15 .. v30}, Lq4/b0;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILq4/u;Lq4/x;Lq4/y;Lq4/a0;Lq4/z;Lq4/v;Lq4/r;Lq4/s;Lq4/t;)V

    move-object/from16 v1, v31

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object v5, v1

    move-object/from16 v6, v40

    move/from16 v7, v41

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_1f
    move-object v1, v5

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_1d

    :cond_20
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    check-cast v1, Ly7/a;

    .line 16
    iget-object v2, v1, Ly7/a;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/google/android/libraries/barhopper/BarhopperV2;->close()V

    const/4 v2, 0x0

    iput-object v2, v1, Ly7/a;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    goto :goto_1c

    :cond_21
    move-object/from16 v0, p3

    .line 17
    move-object/from16 v1, p0

    check-cast v1, Ly7/a;

    .line 18
    iget-object v2, v1, Ly7/a;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    if-eqz v2, :cond_22

    goto :goto_1c

    :cond_22
    new-instance v2, Lcom/google/android/libraries/barhopper/BarhopperV2;

    invoke-direct {v2}, Lcom/google/android/libraries/barhopper/BarhopperV2;-><init>()V

    iput-object v2, v1, Ly7/a;->b:Lcom/google/android/libraries/barhopper/BarhopperV2;

    invoke-virtual {v2}, Lcom/google/android/libraries/barhopper/BarhopperV2;->a()V

    .line 19
    :cond_23
    :goto_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1d
    const/4 v0, 0x1

    return v0
.end method
