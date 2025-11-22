.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;
    }
.end annotation


# instance fields
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;

.field public final b:Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;)V
    .locals 1

    const-string v0, "resultListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lc8/b;->a()Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    move-result-object p1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->b:Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jmrtd/lds/icao/MRZInfo;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentNumber()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDocumentNumber()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfBirth()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfBirth()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x6

    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfExpiry()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/jmrtd/lds/icao/MRZInfo;->getDateOfExpiry()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v1, v2, :cond_0

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;

    .line 59
    .line 60
    invoke-interface {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;->b(Lorg/jmrtd/lds/icao/MRZInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 65
    .line 66
    const-string v1, "MRZ DATA is not valid"

    .line 67
    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lyd/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_1
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;Lzh/d;Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    const-string v0, "graphicOverlay"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v5, p2, Lzh/d;->a:I

    .line 16
    .line 17
    iget v4, p2, Lzh/d;->b:I

    .line 18
    .line 19
    iget v7, p2, Lzh/d;->c:I

    .line 20
    .line 21
    const/16 v2, 0x11

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    new-instance v1, La8/a;

    .line 28
    .line 29
    invoke-direct {v1, p1, v5, v4, v7}, La8/a;-><init>(Ljava/nio/ByteBuffer;III)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static/range {v2 .. v9}, La8/a;->c(IIIIIIJ)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->b:Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->a(La8/a;)Lh5/z;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v1, "textRecognizer.process(image)"

    .line 47
    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lzh/g;

    .line 52
    .line 53
    invoke-direct {v1, p0, p2, p3}, Lzh/g;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;Lzh/d;Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Landroidx/camera/core/impl/utils/futures/a;

    .line 57
    .line 58
    const/16 p3, 0x8

    .line 59
    .line 60
    invoke-direct {p2, p3, v1}, Landroidx/camera/core/impl/utils/futures/a;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lh5/m;->a:Lh5/y;

    .line 64
    .line 65
    invoke-virtual {p1, v1, p2}, Lh5/z;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    .line 66
    .line 67
    .line 68
    new-instance p2, Landroidx/camera/core/impl/k;

    .line 69
    .line 70
    invoke-direct {p2, p3, p0}, Landroidx/camera/core/impl/k;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lh5/z;->p(Lh5/f;)Lh5/z;

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
