.class public final Lcom/google/android/gms/internal/measurement/o3;
.super Lcom/google/android/gms/internal/measurement/q6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/t7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q6<",
        "Lcom/google/android/gms/internal/measurement/o3;",
        "Lcom/google/android/gms/internal/measurement/n3;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/t7;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/o3;


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6<",
            "Lcom/google/android/gms/internal/measurement/q3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/o3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/o3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/o3;->zza:Lcom/google/android/gms/internal/measurement/o3;

    const-class v1, Lcom/google/android/gms/internal/measurement/o3;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->zze:Lcom/google/android/gms/internal/measurement/w6;

    .line 7
    .line 8
    return-void
.end method

.method public static r()Lcom/google/android/gms/internal/measurement/n3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/o3;->zza:Lcom/google/android/gms/internal/measurement/o3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q6;->m()Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n3;

    return-object v0
.end method

.method public static synthetic s()Lcom/google/android/gms/internal/measurement/o3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/o3;->zza:Lcom/google/android/gms/internal/measurement/o3;

    return-object v0
.end method

.method public static synthetic v(Lcom/google/android/gms/internal/measurement/o3;Lcom/google/android/gms/internal/measurement/q3;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->zze:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q6;->j(Lcom/google/android/gms/internal/measurement/w6;)Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->zze:Lcom/google/android/gms/internal/measurement/w6;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/o3;->zze:Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final q(I)Ljava/lang/Object;
    .locals 3

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
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_2

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/o3;->zza:Lcom/google/android/gms/internal/measurement/o3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/n3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/n3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/o3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/o3;-><init>()V

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
    const-class v1, Lcom/google/android/gms/internal/measurement/q3;

    .line 43
    .line 44
    aput-object v1, p1, v0

    .line 45
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/o3;->zza:Lcom/google/android/gms/internal/measurement/o3;

    .line 47
    .line 48
    new-instance v1, Lcom/google/android/gms/internal/measurement/c8;

    .line 49
    .line 50
    const-string v2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 51
    .line 52
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/c8;-><init>(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/q3;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->zze:Lcom/google/android/gms/internal/measurement/w6;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q3;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/w6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->zze:Lcom/google/android/gms/internal/measurement/w6;

    return-object v0
.end method
