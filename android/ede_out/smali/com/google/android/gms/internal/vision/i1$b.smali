.class public Lcom/google/android/gms/internal/vision/i1$b;
.super Lcom/google/android/gms/internal/vision/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/i1<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/i1$b<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/e0<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Lcom/google/android/gms/internal/vision/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/i1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/e0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/i1$b;->a:Lcom/google/android/gms/internal/vision/i1;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/i1;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/i1;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    return-void
.end method

.method public static e(Lcom/google/android/gms/internal/vision/i1;Lcom/google/android/gms/internal/vision/i1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/a3;->c:Lcom/google/android/gms/internal/vision/a3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/a3;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/d3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/d3;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final c([BILcom/google/android/gms/internal/vision/w0;)Lcom/google/android/gms/internal/vision/i1$b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/q1;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    .line 10
    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/a3;->c:Lcom/google/android/gms/internal/vision/a3;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/a3;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/d3;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    new-instance v7, Lcom/google/android/gms/internal/vision/l0;

    .line 30
    .line 31
    invoke-direct {v7, p3}, Lcom/google/android/gms/internal/vision/l0;-><init>(Lcom/google/android/gms/internal/vision/w0;)V

    .line 32
    .line 33
    .line 34
    move-object v4, p1

    .line 35
    move v6, p2

    .line 36
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/d3;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/l0;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/q1; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string p3, "Reading from byte array should not throw IOException."

    .line 44
    .line 45
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p2

    .line 49
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    throw p1

    .line 54
    :catch_2
    move-exception p1

    .line 55
    throw p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i1$b;->a:Lcom/google/android/gms/internal/vision/i1;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/i1;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/i1$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->i()Lcom/google/android/gms/internal/vision/i1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/i1$b;->d(Lcom/google/android/gms/internal/vision/i1;)V

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/vision/i1;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/i1$b;->e(Lcom/google/android/gms/internal/vision/i1;Lcom/google/android/gms/internal/vision/i1;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/i1;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/i1;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/i1$b;->e(Lcom/google/android/gms/internal/vision/i1;Lcom/google/android/gms/internal/vision/i1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/vision/i1;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/vision/a3;->c:Lcom/google/android/gms/internal/vision/a3;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vision/a3;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/d3;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/d3;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->c:Z

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->b:Lcom/google/android/gms/internal/vision/i1;

    .line 28
    .line 29
    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/vision/i1;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i1$b;->i()Lcom/google/android/gms/internal/vision/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/o3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/o3;-><init>()V

    throw v0
.end method

.method public final synthetic n()Lcom/google/android/gms/internal/vision/i1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i1$b;->a:Lcom/google/android/gms/internal/vision/i1;

    return-object v0
.end method
