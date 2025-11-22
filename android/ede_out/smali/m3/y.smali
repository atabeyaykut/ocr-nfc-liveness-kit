.class public final Lm3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# static fields
.field public static final a:Lm3/s;

.field public static final b:Lm3/t;

.field public static volatile c:Lr3/s0;

.field public static final d:Ljava/lang/Object;

.field public static e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm3/q;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-static {v1}, Lm3/u;->x0(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm3/q;-><init>([B)V

    new-instance v0, Lm3/r;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-static {v1}, Lm3/u;->x0(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm3/r;-><init>([B)V

    new-instance v0, Lm3/s;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v1}, Lm3/u;->x0(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm3/s;-><init>([B)V

    sput-object v0, Lm3/y;->a:Lm3/s;

    new-instance v0, Lm3/t;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v1}, Lm3/u;->x0(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm3/t;-><init>([B)V

    sput-object v0, Lm3/y;->b:Lm3/t;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm3/y;->d:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lm3/y;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm3/y;->e:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lm3/y;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;Lm3/u;ZZ)Lm3/g0;
    .locals 6

    .line 1
    const-string v0, "Failed to get Google certificates from remote"

    .line 2
    .line 3
    const-string v1, "GoogleCertificates"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lm3/y;->c()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    .line 9
    sget-object v3, Lm3/y;->e:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v3}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lm3/d0;

    .line 15
    .line 16
    invoke-direct {v3, p0, p1, p2, p3}, Lm3/d0;-><init>(Ljava/lang/String;Lm3/u;ZZ)V

    .line 17
    .line 18
    .line 19
    :try_start_1
    sget-object p3, Lm3/y;->c:Lr3/s0;

    .line 20
    .line 21
    sget-object v4, Lm3/y;->e:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v5, Lz3/d;

    .line 28
    .line 29
    invoke-direct {v5, v4}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, v3, v5}, Lr3/s0;->s(Lm3/d0;Lz3/d;)Z

    .line 33
    .line 34
    .line 35
    move-result p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    sget-object p0, Lm3/g0;->d:Lm3/g0;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    new-instance p3, Lm3/p;

    .line 42
    .line 43
    invoke-direct {p3, p2, p0, p1}, Lm3/p;-><init>(ZLjava/lang/String;Lm3/u;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Lm3/f0;

    .line 47
    .line 48
    invoke-direct {p0, p3}, Lm3/f0;-><init>(Lm3/p;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    new-instance p1, Lm3/g0;

    .line 57
    .line 58
    const-string p2, "module call"

    .line 59
    .line 60
    invoke-direct {p1, v2, p2, p0}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :catch_1
    move-exception p0

    .line 65
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "module init: "

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance p2, Lm3/g0;

    .line 83
    .line 84
    invoke-direct {p2, v2, p1, p0}, Lm3/g0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 85
    .line 86
    .line 87
    return-object p2
.end method

.method public static c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$a;
        }
    .end annotation

    .line 1
    sget-object v0, Lm3/y;->c:Lr3/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lm3/y;->e:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lm3/y;->d:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lm3/y;->c:Lr3/s0;

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    sget-object v1, Lm3/y;->e:Landroid/content/Context;

    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->e:Lcom/google/android/gms/dynamite/e;

    .line 21
    .line 22
    const-string v3, "com.google.android.gms.googlecertificates"

    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget v2, Lr3/r0;->a:I

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v2, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    .line 41
    .line 42
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    instance-of v3, v2, Lr3/s0;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    check-cast v1, Lr3/s0;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v2, Lr3/q0;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Lr3/q0;-><init>(Landroid/os/IBinder;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v2

    .line 60
    :goto_0
    sput-object v1, Lm3/y;->c:Lr3/s0;

    .line 61
    .line 62
    :cond_3
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1
.end method
