.class public final Lcom/google/android/gms/internal/measurement/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/d0;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/measurement/f0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/f0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x;->b:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/measurement/v;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/v;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/x;->c(Lcom/google/android/gms/internal/measurement/w;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/y;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/y;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/x;->c(Lcom/google/android/gms/internal/measurement/w;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/z;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/z;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/x;->c(Lcom/google/android/gms/internal/measurement/w;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/x;->c(Lcom/google/android/gms/internal/measurement/w;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/z;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/z;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/x;->c(Lcom/google/android/gms/internal/measurement/w;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/e0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/e0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/x;->c(Lcom/google/android/gms/internal/measurement/w;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/g0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/g0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/x;->c(Lcom/google/android/gms/internal/measurement/w;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/s3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/x;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;
    .locals 2

    .line 1
    invoke-static {p1}, Lc5/w;->U(Lcom/google/android/gms/internal/measurement/s3;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/q;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p2, Lcom/google/android/gms/internal/measurement/q;

    .line 9
    .line 10
    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/q;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Map;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/gms/internal/measurement/w;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcom/google/android/gms/internal/measurement/f0;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Lcom/google/android/gms/internal/measurement/w;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/s3;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/p;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    return-object p2
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/s3;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/s3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/s3;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/w;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/w;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/measurement/h0;

    .line 18
    .line 19
    iget v1, v1, Lcom/google/android/gms/internal/measurement/h0;->a:I

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
