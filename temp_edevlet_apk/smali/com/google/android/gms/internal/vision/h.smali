.class public final Lcom/google/android/gms/internal/vision/h;
.super Lcom/google/android/gms/internal/vision/i1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/p2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/h$a;,
        Lcom/google/android/gms/internal/vision/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/i1<",
        "Lcom/google/android/gms/internal/vision/h;",
        "Lcom/google/android/gms/internal/vision/h$a;",
        ">;",
        "Lcom/google/android/gms/internal/vision/p2;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/vision/h;

.field private static volatile zzm:Lcom/google/android/gms/internal/vision/z2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/z2<",
            "Lcom/google/android/gms/internal/vision/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:Ljava/lang/String;

.field private zzk:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/h;->zzl:Lcom/google/android/gms/internal/vision/h;

    const-class v1, Lcom/google/android/gms/internal/vision/h;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/i1;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/i1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/i1;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/h;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/h;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic o()Lcom/google/android/gms/internal/vision/h;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/h;->zzl:Lcom/google/android/gms/internal/vision/h;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/h;->zzm:Lcom/google/android/gms/internal/vision/z2;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-class v0, Lcom/google/android/gms/internal/vision/h;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/h;->zzm:Lcom/google/android/gms/internal/vision/z2;

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
    sput-object p1, Lcom/google/android/gms/internal/vision/h;->zzm:Lcom/google/android/gms/internal/vision/z2;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/h;->zzl:Lcom/google/android/gms/internal/vision/h;

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_4
    const/16 p1, 0xa

    .line 51
    .line 52
    new-array p1, p1, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    const-string v2, "zzc"

    .line 56
    .line 57
    aput-object v2, p1, v0

    .line 58
    .line 59
    const-string v0, "zzd"

    .line 60
    .line 61
    aput-object v0, p1, v1

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    const-string v1, "zze"

    .line 65
    .line 66
    aput-object v1, p1, v0

    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    const-string v1, "zzf"

    .line 70
    .line 71
    aput-object v1, p1, v0

    .line 72
    .line 73
    sget-object v0, Lcom/google/android/gms/internal/vision/u;->a:Lcom/google/android/gms/internal/vision/u;

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    aput-object v0, p1, v1

    .line 77
    .line 78
    const/4 v0, 0x5

    .line 79
    const-string v1, "zzg"

    .line 80
    .line 81
    aput-object v1, p1, v0

    .line 82
    .line 83
    const/4 v0, 0x6

    .line 84
    const-string v1, "zzh"

    .line 85
    .line 86
    aput-object v1, p1, v0

    .line 87
    .line 88
    const/4 v0, 0x7

    .line 89
    const-string v1, "zzi"

    .line 90
    .line 91
    aput-object v1, p1, v0

    .line 92
    .line 93
    const/16 v0, 0x8

    .line 94
    .line 95
    const-string v1, "zzj"

    .line 96
    .line 97
    aput-object v1, p1, v0

    .line 98
    .line 99
    const/16 v0, 0x9

    .line 100
    .line 101
    const-string v1, "zzk"

    .line 102
    .line 103
    aput-object v1, p1, v0

    .line 104
    .line 105
    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u100c\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1008\u0006\u0008\u1007\u0007"

    .line 106
    .line 107
    sget-object v1, Lcom/google/android/gms/internal/vision/h;->zzl:Lcom/google/android/gms/internal/vision/h;

    .line 108
    .line 109
    new-instance v2, Lcom/google/android/gms/internal/vision/b3;

    .line 110
    .line 111
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/vision/b3;-><init>(Lcom/google/android/gms/internal/vision/i1;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-object v2

    .line 115
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/h$a;

    .line 116
    .line 117
    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/h$a;-><init>()V

    .line 118
    .line 119
    .line 120
    return-object p1

    .line 121
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/h;

    .line 122
    .line 123
    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/h;-><init>()V

    .line 124
    .line 125
    .line 126
    return-object p1

    .line 127
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
