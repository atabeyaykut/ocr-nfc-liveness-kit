.class public final Lp4/da;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lp4/ca;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static a(Ljava/lang/Object;)I
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    int-to-long v0, p0

    const-wide/32 v2, -0x3361d2af

    mul-long v0, v0, v2

    long-to-int p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x1b873593

    mul-long v0, v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static declared-synchronized b(Lp4/n9;)Lp4/v9;
    .locals 2

    const-class v0, Lp4/da;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp4/da;->a:Lp4/ca;

    if-nez v1, :cond_0

    new-instance v1, Lp4/ca;

    invoke-direct {v1}, Lp4/ca;-><init>()V

    sput-object v1, Lp4/da;->a:Lp4/ca;

    :cond_0
    sget-object v1, Lp4/da;->a:Lp4/ca;

    invoke-virtual {v1, p0}, Lv7/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp4/v9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)Lp4/v9;
    .locals 2

    .line 1
    const-class v0, Lp4/da;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lp4/m9;

    .line 5
    .line 6
    invoke-direct {v1}, Lp4/m9;-><init>()V

    .line 7
    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iput-object p0, v1, Lp4/m9;->a:Ljava/lang/Object;

    .line 12
    .line 13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object p0, v1, Lp4/m9;->b:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iput-object p0, v1, Lp4/m9;->c:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1}, Lp4/m9;->e()Lp4/n9;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lp4/da;->b(Lp4/n9;)Lp4/v9;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 37
    .line 38
    const-string v1, "Null libraryName"

    .line 39
    .line 40
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    throw p0
.end method
