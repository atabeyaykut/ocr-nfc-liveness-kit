.class public final Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation


# instance fields
.field public final a:Le1/r;

.field public final b:I

.field public final c:I

.field public final d:Lv0/b;

.field public final e:Le1/l;

.field public final f:Z

.field public final g:Lv0/i;


# direct methods
.method public constructor <init>(IILv0/h;)V
    .locals 2
    .param p3    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Le1/r;->j:Le1/r;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-class v0, Le1/r;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Le1/r;->j:Le1/r;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Le1/r;

    .line 16
    .line 17
    invoke-direct {v1}, Le1/r;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Le1/r;->j:Le1/r;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Le1/r;->j:Le1/r;

    .line 28
    .line 29
    iput-object v0, p0, Ld1/a;->a:Le1/r;

    .line 30
    .line 31
    iput p1, p0, Ld1/a;->b:I

    .line 32
    .line 33
    iput p2, p0, Ld1/a;->c:I

    .line 34
    .line 35
    sget-object p1, Le1/m;->f:Lv0/g;

    .line 36
    .line 37
    invoke-virtual {p3, p1}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lv0/b;

    .line 42
    .line 43
    iput-object p1, p0, Ld1/a;->d:Lv0/b;

    .line 44
    .line 45
    sget-object p1, Le1/l;->f:Lv0/g;

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Le1/l;

    .line 52
    .line 53
    iput-object p1, p0, Ld1/a;->e:Le1/l;

    .line 54
    .line 55
    sget-object p1, Le1/m;->i:Lv0/g;

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p3, p1}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 p1, 0x0

    .line 78
    :goto_1
    iput-boolean p1, p0, Ld1/a;->f:Z

    .line 79
    .line 80
    sget-object p1, Le1/m;->g:Lv0/g;

    .line 81
    .line 82
    invoke-virtual {p3, p1}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lv0/i;

    .line 87
    .line 88
    iput-object p1, p0, Ld1/a;->g:Lv0/i;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 7
    .param p1    # Landroid/graphics/ImageDecoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/ImageDecoder$ImageInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ImageDecoder$Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Ld1/a;->a:Le1/r;

    iget v0, p0, Ld1/a;->b:I

    iget v1, p0, Ld1/a;->c:I

    iget-boolean v2, p0, Ld1/a;->f:Z

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Le1/r;->a(IIZZ)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1}, Landroidx/browser/trusted/e;->h(Landroid/graphics/ImageDecoder;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/browser/trusted/g;->i(Landroid/graphics/ImageDecoder;)V

    :goto_0
    iget-object p3, p0, Ld1/a;->d:Lv0/b;

    sget-object v0, Lv0/b;->b:Lv0/b;

    if-ne p3, v0, :cond_1

    invoke-static {p1}, Landroidx/arch/core/executor/a;->k(Landroid/graphics/ImageDecoder;)V

    :cond_1
    new-instance p3, Ld1/a$a;

    invoke-direct {p3}, Ld1/a$a;-><init>()V

    invoke-static {p1, p3}, Landroidx/camera/camera2/internal/compat/params/c;->e(Landroid/graphics/ImageDecoder;Ld1/a$a;)V

    invoke-static {p2}, Landroidx/camera/camera2/internal/compat/params/d;->c(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    move-result-object p3

    iget v0, p0, Ld1/a;->b:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    :cond_2
    iget v2, p0, Ld1/a;->c:I

    if-ne v2, v1, :cond_3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    :cond_3
    iget-object v1, p0, Ld1/a;->e:Le1/l;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v5, v0, v2}, Le1/l;->b(IIII)F

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const-string v4, "ImageDecoder"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Resizing from ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] to ["

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] scaleFactor: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1, v1, v2}, Landroidx/camera/camera2/internal/compat/params/e;->h(Landroid/graphics/ImageDecoder;II)V

    iget-object p3, p0, Ld1/a;->g:Lv0/i;

    if-eqz p3, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    sget-object v0, Lv0/i;->a:Lv0/i;

    if-ne p3, v0, :cond_5

    invoke-static {p2}, Landroidx/camera/camera2/internal/compat/params/f;->e(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p2}, Landroidx/camera/camera2/internal/compat/params/f;->e(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/app/i;->j(Landroid/graphics/ColorSpace;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {}, Landroidx/browser/trusted/b;->h()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    goto :goto_1

    :cond_6
    invoke-static {}, Landroidx/camera/camera2/internal/compat/params/b;->d()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Landroidx/appcompat/app/d;->f(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/browser/trusted/f;->k(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    goto :goto_2

    :cond_7
    const/16 p2, 0x1a

    if-lt v0, p2, :cond_8

    invoke-static {}, Landroidx/camera/camera2/internal/compat/params/b;->d()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/app/d;->f(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/browser/trusted/f;->k(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    :cond_8
    :goto_2
    return-void
.end method
