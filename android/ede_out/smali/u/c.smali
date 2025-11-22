.class public final Lu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/c$a;
    }
.end annotation


# static fields
.field public static final a:[Landroid/graphics/Bitmap$Config;

.field public static final b:Landroid/graphics/Bitmap$Config;

.field public static final c:Lrc/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v5, v4, v1

    invoke-static {}, Landroidx/appcompat/app/e;->h()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    aput-object v1, v4, v2

    goto :goto_0

    :cond_0
    new-array v4, v2, [Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v2, v4, v1

    :goto_0
    sput-object v4, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    if-lt v0, v3, :cond_1

    invoke-static {}, Landroidx/camera/camera2/internal/compat/workaround/a;->e()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    sput-object v0, Lu/c;->b:Landroid/graphics/Bitmap$Config;

    new-instance v0, Lrc/q$a;

    invoke-direct {v0}, Lrc/q$a;-><init>()V

    invoke-virtual {v0}, Lrc/q$a;->c()Lrc/q;

    move-result-object v0

    sput-object v0, Lu/c;->c:Lrc/q;

    return-void
.end method

.method public static final a(Ljava/io/Closeable;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final b(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Lmc/j;->y(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_2
    const/16 v0, 0x23

    .line 18
    .line 19
    invoke-static {p1, v0}, Lmc/n;->h0(Ljava/lang/String;C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 v0, 0x3f

    .line 24
    .line 25
    invoke-static {p1, v0}, Lmc/n;->h0(Ljava/lang/String;C)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 v0, 0x2f

    .line 30
    .line 31
    invoke-static {v0, p1, p1}, Lmc/n;->d0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/16 v0, 0x2e

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    invoke-static {v0, p1, v1}, Lmc/n;->d0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static final c(Landroid/view/View;)Lp/q;
    .locals 4

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lp/q;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lp/q;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lp/q;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lp/q;

    :cond_1
    if-nez v3, :cond_2

    new-instance v1, Lp/q;

    invoke-direct {v1, p0}, Lp/q;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static final d(Lq/a;I)I
    .locals 1

    instance-of v0, p0, Lq/a$a;

    if-eqz v0, :cond_0

    check-cast p0, Lq/a$a;

    iget p0, p0, Lq/a$a;->a:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    new-instance p0, Lj7/p;

    invoke-direct {p0}, Lj7/p;-><init>()V

    throw p0

    :cond_2
    const/high16 p0, -0x80000000

    :goto_0
    return p0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method
