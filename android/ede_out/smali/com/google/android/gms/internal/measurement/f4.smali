.class public final Lcom/google/android/gms/internal/measurement/f4;
.super Lcom/google/android/gms/internal/measurement/q6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q6<",
        "Lcom/google/android/gms/internal/measurement/f4;",
        "Lcom/google/android/gms/internal/measurement/x2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/t7;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/f4;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6<",
            "Lcom/google/android/gms/internal/measurement/i4;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/measurement/c4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/f4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/f4;->zza:Lcom/google/android/gms/internal/measurement/f4;

    const-class v1, Lcom/google/android/gms/internal/measurement/f4;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/f4;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic s()Lcom/google/android/gms/internal/measurement/f4;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/f4;->zza:Lcom/google/android/gms/internal/measurement/f4;

    return-object v0
.end method


# virtual methods
.method public final q(I)Ljava/lang/Object;
    .locals 5

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
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    if-eq p1, v4, :cond_3

    .line 11
    .line 12
    if-eq p1, v3, :cond_2

    .line 13
    .line 14
    if-eq p1, v2, :cond_1

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/f4;->zza:Lcom/google/android/gms/internal/measurement/f4;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/x2;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/x2;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/f4;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/f4;-><init>()V

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
    const-class v0, Lcom/google/android/gms/internal/measurement/i4;

    .line 47
    .line 48
    aput-object v0, p1, v4

    .line 49
    .line 50
    const-string v0, "zzg"

    .line 51
    .line 52
    aput-object v0, p1, v3

    .line 53
    .line 54
    sget-object v0, Lcom/google/android/gms/internal/measurement/f4;->zza:Lcom/google/android/gms/internal/measurement/f4;

    .line 55
    .line 56
    new-instance v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 57
    .line 58
    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    .line 59
    .line 60
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/c8;-><init>(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final r()Lcom/google/android/gms/internal/measurement/c4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f4;->zzg:Lcom/google/android/gms/internal/measurement/c4;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/c4;->t()Lcom/google/android/gms/internal/measurement/c4;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/w6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f4;->zzf:Lcom/google/android/gms/internal/measurement/w6;

    return-object v0
.end method
