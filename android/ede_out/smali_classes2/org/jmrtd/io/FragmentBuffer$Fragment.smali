.class public Lorg/jmrtd/io/FragmentBuffer$Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jmrtd/io/FragmentBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fragment"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x34addbb2039565a8L


# instance fields
.field private length:I

.field private offset:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    iput p2, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    return-void
.end method

.method public static synthetic access$000(Lorg/jmrtd/io/FragmentBuffer$Fragment;)I
    .locals 0

    iget p0, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    return p0
.end method

.method public static synthetic access$100(Lorg/jmrtd/io/FragmentBuffer$Fragment;)I
    .locals 0

    iget p0, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    return p0
.end method

.method public static getInstance(II)Lorg/jmrtd/io/FragmentBuffer$Fragment;
    .locals 1

    new-instance v0, Lorg/jmrtd/io/FragmentBuffer$Fragment;

    invoke-direct {v0, p0, p1}, Lorg/jmrtd/io/FragmentBuffer$Fragment;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/jmrtd/io/FragmentBuffer$Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/jmrtd/io/FragmentBuffer$Fragment;

    iget v2, p1, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    iget v3, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    if-ne v2, v3, :cond_3

    iget p1, p1, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    iget v2, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-static {v1, v2, v0, v3}, Landroidx/camera/core/impl/a;->d(IIII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " .. "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->offset:I

    .line 19
    .line 20
    iget v2, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    .line 21
    .line 22
    add-int/2addr v1, v2

    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " ("

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lorg/jmrtd/io/FragmentBuffer$Fragment;->length:I

    .line 34
    .line 35
    const-string v2, ")]"

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
