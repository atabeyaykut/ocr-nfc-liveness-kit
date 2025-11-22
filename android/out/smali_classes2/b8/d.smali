.class public final Lb8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb8/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr3/j;

    const-string v1, "MLKitImageUtils"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lr3/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lb8/d;

    invoke-direct {v0}, Lb8/d;-><init>()V

    sput-object v0, Lb8/d;->a:Lb8/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(La8/a;)Lz3/d;
    .locals 3
    .param p0    # La8/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget v0, p0, La8/a;->g:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/16 v1, 0x23

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const v1, 0x32315659

    .line 15
    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v0, Lr7/a;

    .line 21
    .line 22
    iget p0, p0, La8/a;->g:I

    .line 23
    .line 24
    const/16 v1, 0x25

    .line 25
    .line 26
    const-string v2, "Unsupported image format: "

    .line 27
    .line 28
    invoke-static {v1, v2, p0}, Landroidx/appcompat/widget/v;->c(ILjava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, p0, v1}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    iget-object v0, p0, La8/a;->c:La8/b;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p0, p0, La8/a;->c:La8/b;

    .line 44
    .line 45
    iget-object p0, p0, La8/b;->a:Landroid/media/Image;

    .line 46
    .line 47
    :goto_0
    new-instance v0, Lz3/d;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    :goto_1
    iget-object p0, p0, La8/a;->b:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lz3/d;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_4
    iget-object p0, p0, La8/a;->a:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lz3/d;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public static b(La8/a;)I
    .locals 3
    .param p0    # La8/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget v0, p0, La8/a;->g:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, La8/a;->a:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/16 v1, 0x11

    .line 17
    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const v1, 0x32315659

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v1, 0x23

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p0}, La8/a;->b()[Landroid/media/Image$Plane;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    aget-object p0, p0, v2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    mul-int/lit8 p0, p0, 0x3

    .line 51
    .line 52
    div-int/lit8 p0, p0, 0x2

    .line 53
    .line 54
    return p0

    .line 55
    :cond_3
    :goto_0
    iget-object p0, p0, La8/a;->b:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    invoke-static {p0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :goto_1
    return p0
.end method
