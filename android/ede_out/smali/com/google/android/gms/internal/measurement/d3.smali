.class public final Lcom/google/android/gms/internal/measurement/d3;
.super Lcom/google/android/gms/internal/measurement/q6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q6<",
        "Lcom/google/android/gms/internal/measurement/d3;",
        "Lcom/google/android/gms/internal/measurement/c3;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/t7;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/d3;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/w3;

.field private zzh:Lcom/google/android/gms/internal/measurement/w3;

.field private zzi:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/d3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d3;->zza:Lcom/google/android/gms/internal/measurement/d3;

    const-class v1, Lcom/google/android/gms/internal/measurement/d3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q6;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q6;-><init>()V

    return-void
.end method

.method public static s()Lcom/google/android/gms/internal/measurement/c3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/d3;->zza:Lcom/google/android/gms/internal/measurement/d3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q6;->m()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/c3;

    return-object v0
.end method

.method public static synthetic t()Lcom/google/android/gms/internal/measurement/d3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/d3;->zza:Lcom/google/android/gms/internal/measurement/d3;

    return-object v0
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/measurement/d3;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zzf:I

    return-void
.end method

.method public static synthetic x(Lcom/google/android/gms/internal/measurement/d3;Lcom/google/android/gms/internal/measurement/w3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zzg:Lcom/google/android/gms/internal/measurement/w3;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    return-void
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/measurement/d3;Lcom/google/android/gms/internal/measurement/w3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zzh:Lcom/google/android/gms/internal/measurement/w3;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    return-void
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/measurement/d3;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/d3;->zzi:Z

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zzi:Z

    return v0
.end method

.method public final B()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q(I)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/d3;->zza:Lcom/google/android/gms/internal/measurement/d3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/c3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/c3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/d3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/d3;-><init>()V

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
    aput-object v0, p1, v5

    .line 49
    .line 50
    const-string v0, "zzh"

    .line 51
    .line 52
    aput-object v0, p1, v4

    .line 53
    .line 54
    const-string v0, "zzi"

    .line 55
    .line 56
    aput-object v0, p1, v3

    .line 57
    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/d3;->zza:Lcom/google/android/gms/internal/measurement/d3;

    .line 59
    .line 60
    new-instance v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 61
    .line 62
    const-string v2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    .line 63
    .line 64
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/c8;-><init>(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zzf:I

    return v0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/w3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zzg:Lcom/google/android/gms/internal/measurement/w3;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/w3;->y()Lcom/google/android/gms/internal/measurement/w3;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/measurement/w3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d3;->zzh:Lcom/google/android/gms/internal/measurement/w3;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/w3;->y()Lcom/google/android/gms/internal/measurement/w3;

    move-result-object v0

    :cond_0
    return-object v0
.end method
