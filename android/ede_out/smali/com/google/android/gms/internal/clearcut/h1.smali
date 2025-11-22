.class public Lcom/google/android/gms/internal/clearcut/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/google/android/gms/internal/clearcut/x1;

.field public volatile b:Lcom/google/android/gms/internal/clearcut/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/clearcut/i0;->b:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/clearcut/h0;->a:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string v1, "getEmptyRegistry"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-array v1, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/gms/internal/clearcut/i0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/x;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/x1;->s()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/google/android/gms/internal/clearcut/x1;)Lcom/google/android/gms/internal/clearcut/x1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;
    :try_end_1
    .catch Lcom/google/android/gms/internal/clearcut/b1; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    sget-object p1, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    return-object p1
.end method

.method public final c()Lcom/google/android/gms/internal/clearcut/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/x1;->n()Lcom/google/android/gms/internal/clearcut/c0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->b:Lcom/google/android/gms/internal/clearcut/x;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/clearcut/h1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/h1;

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/h1;->a:Lcom/google/android/gms/internal/clearcut/x1;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/h1;->c()Lcom/google/android/gms/internal/clearcut/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/h1;->c()Lcom/google/android/gms/internal/clearcut/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/z1;->c()Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/clearcut/h1;->b(Lcom/google/android/gms/internal/clearcut/x1;)Lcom/google/android/gms/internal/clearcut/x1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/clearcut/z1;->c()Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/h1;->b(Lcom/google/android/gms/internal/clearcut/x1;)Lcom/google/android/gms/internal/clearcut/x1;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
