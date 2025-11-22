.class public final Lcom/google/android/gms/internal/measurement/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/x;

.field public final b:Lcom/google/android/gms/internal/measurement/s3;

.field public final c:Lcom/google/android/gms/internal/measurement/s3;

.field public final d:Lcom/google/android/gms/internal/measurement/w5;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/x;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/x;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t2;->a:Lcom/google/android/gms/internal/measurement/x;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/measurement/s3;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/s3;-><init>(Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/x;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t2;->c:Lcom/google/android/gms/internal/measurement/s3;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/s3;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t2;->b:Lcom/google/android/gms/internal/measurement/s3;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/w5;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/w5;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t2;->d:Lcom/google/android/gms/internal/measurement/w5;

    .line 32
    .line 33
    new-instance v2, Lcom/google/android/gms/internal/measurement/rc;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/rc;-><init>(Lcom/google/android/gms/internal/measurement/w5;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "require"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/s3;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/google/android/gms/internal/measurement/a2;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/w5;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/util/Map;

    .line 48
    .line 49
    const-string v3, "internal.platform"

    .line 50
    .line 51
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    .line 55
    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    .line 63
    .line 64
    .line 65
    const-string v2, "runtime.counter"

    .line 66
    .line 67
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/s3;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/measurement/s3;[Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/p;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p2, v2

    invoke-static {v0}, Lb8/f;->x0(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/t2;->c:Lcom/google/android/gms/internal/measurement/s3;

    invoke-static {v3}, Lc5/w;->U(Lcom/google/android/gms/internal/measurement/s3;)V

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/q;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/o;

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/t2;->a:Lcom/google/android/gms/internal/measurement/x;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/measurement/x;->a(Lcom/google/android/gms/internal/measurement/s3;Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
