.class public final Lbe/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Landroid/widget/EditText;

.field public final c:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lbe/i;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lbe/i;->c:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lbe/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lbe/i;

    iget-object v1, p1, Lbe/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lbe/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lbe/i;->b:Landroid/widget/EditText;

    iget-object v3, p1, Lbe/i;->b:Landroid/widget/EditText;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lbe/i;->c:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;

    iget-object p1, p1, Lbe/i;->c:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lbe/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbe/i;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lbe/i;->c:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ManualDynamicFieldValidation(parentView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbe/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbe/i;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbe/i;->c:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
