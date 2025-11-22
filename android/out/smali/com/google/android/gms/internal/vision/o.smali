.class public final Lcom/google/android/gms/internal/vision/o;
.super Lcom/google/android/gms/internal/vision/i1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/p2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/i1<",
        "Lcom/google/android/gms/internal/vision/o;",
        "Lcom/google/android/gms/internal/vision/o$a;",
        ">;",
        "Lcom/google/android/gms/internal/vision/p2;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/vision/o;

.field private static volatile zzg:Lcom/google/android/gms/internal/vision/z2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/z2<",
            "Lcom/google/android/gms/internal/vision/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/o;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/o;->zzf:Lcom/google/android/gms/internal/vision/o;

    const-class v1, Lcom/google/android/gms/internal/vision/o;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/i1;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/i1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/i1;-><init>()V

    return-void
.end method

.method public static synthetic o()Lcom/google/android/gms/internal/vision/o;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/o;->zzf:Lcom/google/android/gms/internal/vision/o;

    return-object v0
.end method


# virtual methods
.method public final i(I)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/t;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr p1, v1

    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :pswitch_0
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/o;->zzg:Lcom/google/android/gms/internal/vision/z2;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-class v0, Lcom/google/android/gms/internal/vision/o;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/o;->zzg:Lcom/google/android/gms/internal/vision/z2;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/vision/i1$a;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/i1$a;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object p1, Lcom/google/android/gms/internal/vision/o;->zzg:Lcom/google/android/gms/internal/vision/z2;

    .line 40
    .line 41
    :cond_0
    monitor-exit v0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_0
    return-object p1

    .line 47
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/o;->zzf:Lcom/google/android/gms/internal/vision/o;

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_4
    const/4 p1, 0x3

    .line 51
    new-array p1, p1, [Ljava/lang/Object;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    const-string v2, "zzc"

    .line 55
    .line 56
    aput-object v2, p1, v0

    .line 57
    .line 58
    const-string v0, "zzd"

    .line 59
    .line 60
    aput-object v0, p1, v1

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    const-string v1, "zze"

    .line 64
    .line 65
    aput-object v1, p1, v0

    .line 66
    .line 67
    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001"

    .line 68
    .line 69
    sget-object v1, Lcom/google/android/gms/internal/vision/o;->zzf:Lcom/google/android/gms/internal/vision/o;

    .line 70
    .line 71
    new-instance v2, Lcom/google/android/gms/internal/vision/b3;

    .line 72
    .line 73
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/vision/b3;-><init>(Lcom/google/android/gms/internal/vision/i1;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/o$a;

    .line 78
    .line 79
    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/o$a;-><init>()V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/o;

    .line 84
    .line 85
    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/o;-><init>()V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
