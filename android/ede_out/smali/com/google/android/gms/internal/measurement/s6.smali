.class public final Lcom/google/android/gms/internal/measurement/s6;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc5/b4;)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/s6;->c:I

    const-string v1, "internal.logger"

    .line 1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s6;->d:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/measurement/pc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/pc;-><init>(Lcom/google/android/gms/internal/measurement/s6;ZZ)V

    const-string v3, "log"

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/lb;-><init>(I)V

    const-string v4, "silent"

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/j;

    new-instance v4, Lcom/google/android/gms/internal/measurement/pc;

    invoke-direct {v4, p0, v0, v0}, Lcom/google/android/gms/internal/measurement/pc;-><init>(Lcom/google/android/gms/internal/measurement/s6;ZZ)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/j;->u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/mc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/mc;-><init>()V

    const-string v1, "unmonitored"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/j;

    new-instance v0, Lcom/google/android/gms/internal/measurement/pc;

    invoke-direct {v0, p0, v2, v2}, Lcom/google/android/gms/internal/measurement/pc;-><init>(Lcom/google/android/gms/internal/measurement/s6;ZZ)V

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/j;->u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/s6;->c:I

    const-string v0, "internal.eventLogger"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s6;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/s6;->c:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-static {v1, v2, p2}, Lc5/w;->b0(Ljava/lang/String;ILjava/util/List;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->h()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/google/android/gms/internal/measurement/p;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/p;->i()Ljava/lang/Double;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v2, v3}, Lc5/w;->I(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    double-to-long v2, v2

    .line 54
    const/4 v4, 0x2

    .line 55
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcom/google/android/gms/internal/measurement/p;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/s3;->b(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/m;

    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    check-cast p1, Lcom/google/android/gms/internal/measurement/m;

    .line 70
    .line 71
    invoke-static {p1}, Lc5/w;->a0(Lcom/google/android/gms/internal/measurement/m;)Ljava/util/HashMap;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/s6;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p2, Lcom/google/android/gms/internal/measurement/c;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v4, Lcom/google/android/gms/internal/measurement/b;

    .line 89
    .line 90
    invoke-direct {v4, v1, v2, v3, p1}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/c;->c:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
