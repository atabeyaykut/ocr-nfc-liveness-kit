.class public final Lcom/google/android/gms/internal/measurement/y3;
.super Lcom/google/android/gms/internal/measurement/q6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q6<",
        "Lcom/google/android/gms/internal/measurement/y3;",
        "Lcom/google/android/gms/internal/measurement/x3;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/t7;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/y3;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/v6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/y3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/y3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/y3;->zza:Lcom/google/android/gms/internal/measurement/y3;

    const-class v1, Lcom/google/android/gms/internal/measurement/y3;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzg:Lcom/google/android/gms/internal/measurement/v6;

    .line 7
    .line 8
    return-void
.end method

.method public static u()Lcom/google/android/gms/internal/measurement/x3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y3;->zza:Lcom/google/android/gms/internal/measurement/y3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q6;->m()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/x3;

    return-object v0
.end method

.method public static synthetic v()Lcom/google/android/gms/internal/measurement/y3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y3;->zza:Lcom/google/android/gms/internal/measurement/y3;

    return-object v0
.end method

.method public static synthetic x(Lcom/google/android/gms/internal/measurement/y3;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/y3;->zzf:I

    return-void
.end method

.method public static y(Lcom/google/android/gms/internal/measurement/y3;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzg:Lcom/google/android/gms/internal/measurement/v6;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzg:Lcom/google/android/gms/internal/measurement/v6;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzg:Lcom/google/android/gms/internal/measurement/v6;

    .line 17
    .line 18
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/l5;->f(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/w6;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final q(I)Ljava/lang/Object;
    .locals 4

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
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq p1, v3, :cond_3

    .line 10
    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/y3;->zza:Lcom/google/android/gms/internal/measurement/y3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/x3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/x3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/y3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/y3;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v2, "zze"

    .line 39
    .line 40
    aput-object v2, p1, v1

    .line 41
    .line 42
    const-string v1, "zzf"

    .line 43
    .line 44
    aput-object v1, p1, v0

    .line 45
    .line 46
    const-string v0, "zzg"

    .line 47
    .line 48
    aput-object v0, p1, v3

    .line 49
    .line 50
    sget-object v0, Lcom/google/android/gms/internal/measurement/y3;->zza:Lcom/google/android/gms/internal/measurement/y3;

    .line 51
    .line 52
    new-instance v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 53
    .line 54
    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    .line 55
    .line 56
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/c8;-><init>(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzg:Lcom/google/android/gms/internal/measurement/v6;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzf:I

    return v0
.end method

.method public final t(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzg:Lcom/google/android/gms/internal/measurement/v6;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/h7;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/h7;->o(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h7;->b:[J

    .line 9
    .line 10
    aget-wide v1, v0, p1

    .line 11
    .line 12
    return-wide v1
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/v6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zzg:Lcom/google/android/gms/internal/measurement/v6;

    return-object v0
.end method

.method public final z()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/y3;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
