.class public final Lcom/google/android/gms/internal/measurement/h3;
.super Lcom/google/android/gms/internal/measurement/q6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q6<",
        "Lcom/google/android/gms/internal/measurement/h3;",
        "Lcom/google/android/gms/internal/measurement/g3;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/t7;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/h3;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6<",
            "Lcom/google/android/gms/internal/measurement/l3;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:J

.field private zzj:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/h3;->zza:Lcom/google/android/gms/internal/measurement/h3;

    const-class v1, Lcom/google/android/gms/internal/measurement/h3;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/b8;->d:Lcom/google/android/gms/internal/measurement/b8;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic A(Lcom/google/android/gms/internal/measurement/h3;ILcom/google/android/gms/internal/measurement/l3;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/h3;->L()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic B(Lcom/google/android/gms/internal/measurement/h3;Lcom/google/android/gms/internal/measurement/l3;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/h3;->L()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic C(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/h3;->L()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/l5;->f(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/w6;)V

    return-void
.end method

.method public static D(Lcom/google/android/gms/internal/measurement/h3;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b8;->d:Lcom/google/android/gms/internal/measurement/b8;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    .line 4
    .line 5
    return-void
.end method

.method public static synthetic E(Lcom/google/android/gms/internal/measurement/h3;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/h3;->L()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic F(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G(JLcom/google/android/gms/internal/measurement/h3;)V
    .locals 1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    iput-wide p0, p2, Lcom/google/android/gms/internal/measurement/h3;->zzh:J

    return-void
.end method

.method public static synthetic H(JLcom/google/android/gms/internal/measurement/h3;)V
    .locals 1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    iput-wide p0, p2, Lcom/google/android/gms/internal/measurement/h3;->zzi:J

    return-void
.end method

.method public static v()Lcom/google/android/gms/internal/measurement/g3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zza:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q6;->m()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/g3;

    return-object v0
.end method

.method public static synthetic w()Lcom/google/android/gms/internal/measurement/h3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zza:Lcom/google/android/gms/internal/measurement/h3;

    return-object v0
.end method


# virtual methods
.method public final I()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->j(Lcom/google/android/gms/internal/measurement/w6;)Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    :cond_0
    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/h3;->zza:Lcom/google/android/gms/internal/measurement/h3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/g3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/g3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/h3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/h3;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/4 p1, 0x7

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
    const-class v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 48
    .line 49
    aput-object v0, p1, v5

    .line 50
    .line 51
    const-string v0, "zzg"

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
    const-string v0, "zzi"

    .line 60
    .line 61
    aput-object v0, p1, v2

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    const-string v1, "zzj"

    .line 65
    .line 66
    aput-object v1, p1, v0

    .line 67
    .line 68
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zza:Lcom/google/android/gms/internal/measurement/h3;

    .line 69
    .line 70
    new-instance v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 71
    .line 72
    const-string v2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    .line 73
    .line 74
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/c8;-><init>(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzj:I

    return v0
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzi:J

    return-wide v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzh:J

    return-wide v0
.end method

.method public final x(I)Lcom/google/android/gms/internal/measurement/l3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/l3;

    return-object p1
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/measurement/w6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    return-object v0
.end method
