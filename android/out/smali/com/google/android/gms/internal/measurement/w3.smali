.class public final Lcom/google/android/gms/internal/measurement/w3;
.super Lcom/google/android/gms/internal/measurement/q6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q6<",
        "Lcom/google/android/gms/internal/measurement/w3;",
        "Lcom/google/android/gms/internal/measurement/v3;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/t7;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/w3;


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/v6;

.field private zzf:Lcom/google/android/gms/internal/measurement/v6;

.field private zzg:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6<",
            "Lcom/google/android/gms/internal/measurement/f3;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6<",
            "Lcom/google/android/gms/internal/measurement/y3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/w3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/w3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/w3;->zza:Lcom/google/android/gms/internal/measurement/w3;

    const-class v1, Lcom/google/android/gms/internal/measurement/w3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q6;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q6;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/h7;->d:Lcom/google/android/gms/internal/measurement/h7;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zze:Lcom/google/android/gms/internal/measurement/v6;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzf:Lcom/google/android/gms/internal/measurement/v6;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/b8;->d:Lcom/google/android/gms/internal/measurement/b8;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    .line 15
    .line 16
    return-void
.end method

.method public static E(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zze:Lcom/google/android/gms/internal/measurement/v6;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/m5;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/m5;->a:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->p(Lcom/google/android/gms/internal/measurement/v6;)Lcom/google/android/gms/internal/measurement/h7;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zze:Lcom/google/android/gms/internal/measurement/v6;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w3;->zze:Lcom/google/android/gms/internal/measurement/v6;

    .line 17
    .line 18
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/l5;->f(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/w6;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static F(Lcom/google/android/gms/internal/measurement/w3;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h7;->d:Lcom/google/android/gms/internal/measurement/h7;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zze:Lcom/google/android/gms/internal/measurement/v6;

    .line 4
    .line 5
    return-void
.end method

.method public static G(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzf:Lcom/google/android/gms/internal/measurement/v6;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/m5;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/m5;->a:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->p(Lcom/google/android/gms/internal/measurement/v6;)Lcom/google/android/gms/internal/measurement/h7;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzf:Lcom/google/android/gms/internal/measurement/v6;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzf:Lcom/google/android/gms/internal/measurement/v6;

    .line 17
    .line 18
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/l5;->f(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/w6;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static H(Lcom/google/android/gms/internal/measurement/w3;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h7;->d:Lcom/google/android/gms/internal/measurement/h7;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzf:Lcom/google/android/gms/internal/measurement/v6;

    .line 4
    .line 5
    return-void
.end method

.method public static I(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->j(Lcom/google/android/gms/internal/measurement/w6;)Lcom/google/android/gms/internal/measurement/w6;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    .line 16
    .line 17
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/l5;->f(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/w6;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static J(Lcom/google/android/gms/internal/measurement/w3;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->j(Lcom/google/android/gms/internal/measurement/w6;)Lcom/google/android/gms/internal/measurement/w6;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static K(Lcom/google/android/gms/internal/measurement/w3;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->j(Lcom/google/android/gms/internal/measurement/w6;)Lcom/google/android/gms/internal/measurement/w6;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    .line 16
    .line 17
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/l5;->f(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/w6;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static L(Lcom/google/android/gms/internal/measurement/w3;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->j(Lcom/google/android/gms/internal/measurement/w6;)Lcom/google/android/gms/internal/measurement/w6;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static w()Lcom/google/android/gms/internal/measurement/v3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/w3;->zza:Lcom/google/android/gms/internal/measurement/w3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q6;->m()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/v3;

    return-object v0
.end method

.method public static synthetic x()Lcom/google/android/gms/internal/measurement/w3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/w3;->zza:Lcom/google/android/gms/internal/measurement/w3;

    return-object v0
.end method

.method public static y()Lcom/google/android/gms/internal/measurement/w3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/w3;->zza:Lcom/google/android/gms/internal/measurement/w3;

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/measurement/w6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzf:Lcom/google/android/gms/internal/measurement/v6;

    return-object v0
.end method

.method public final C()Lcom/google/android/gms/internal/measurement/w6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/internal/measurement/v6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zze:Lcom/google/android/gms/internal/measurement/v6;

    return-object v0
.end method

.method public final q(I)Ljava/lang/Object;
    .locals 7

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    if-eq p1, v5, :cond_3

    .line 12
    .line 13
    if-eq p1, v4, :cond_2

    .line 14
    .line 15
    if-eq p1, v3, :cond_1

    .line 16
    .line 17
    if-eq p1, v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/w3;->zza:Lcom/google/android/gms/internal/measurement/w3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/v3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/v3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/w3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/w3;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/4 p1, 0x6

    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v6, "zze"

    .line 40
    .line 41
    aput-object v6, p1, v1

    .line 42
    .line 43
    const-string v1, "zzf"

    .line 44
    .line 45
    aput-object v1, p1, v0

    .line 46
    .line 47
    const-string v0, "zzg"

    .line 48
    .line 49
    aput-object v0, p1, v5

    .line 50
    .line 51
    const-class v0, Lcom/google/android/gms/internal/measurement/f3;

    .line 52
    .line 53
    aput-object v0, p1, v4

    .line 54
    .line 55
    const-string v0, "zzh"

    .line 56
    .line 57
    aput-object v0, p1, v3

    .line 58
    .line 59
    const-class v0, Lcom/google/android/gms/internal/measurement/y3;

    .line 60
    .line 61
    aput-object v0, p1, v2

    .line 62
    .line 63
    sget-object v0, Lcom/google/android/gms/internal/measurement/w3;->zza:Lcom/google/android/gms/internal/measurement/w3;

    .line 64
    .line 65
    new-instance v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 66
    .line 67
    const-string v2, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 68
    .line 69
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/c8;-><init>(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzf:Lcom/google/android/gms/internal/measurement/v6;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zze:Lcom/google/android/gms/internal/measurement/v6;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final v(I)Lcom/google/android/gms/internal/measurement/f3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzg:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/f3;

    return-object p1
.end method

.method public final z(I)Lcom/google/android/gms/internal/measurement/y3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->zzh:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/y3;

    return-object p1
.end method
