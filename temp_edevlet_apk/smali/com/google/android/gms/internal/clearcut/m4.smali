.class public final Lcom/google/android/gms/internal/clearcut/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3/a$b;


# static fields
.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Lcom/google/android/gms/internal/clearcut/m;

.field public static final d:Lcom/google/android/gms/internal/clearcut/m;

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/clearcut/e<",
            "Lcom/google/android/gms/internal/clearcut/a4;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/clearcut/e<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static g:Ljava/lang/Boolean;

.field public static h:Ljava/lang/Long;

.field public static final i:Lcom/google/android/gms/internal/clearcut/h;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/clearcut/m4;->b:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-static {}, Ld5/b;->a()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v4, "gms:playlog:service:samplingrules_"

    .line 17
    .line 18
    const-string v5, "LogSamplingRules__"

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/clearcut/m;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/clearcut/m;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/google/android/gms/internal/clearcut/m4;->c:Lcom/google/android/gms/internal/clearcut/m;

    .line 27
    .line 28
    invoke-static {}, Ld5/b;->a()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v14, 0x0

    .line 35
    const-string v11, "gms:playlog:service:sampling_"

    .line 36
    .line 37
    const-string v12, "LogSampling__"

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/gms/internal/clearcut/m;

    .line 40
    .line 41
    move-object v8, v1

    .line 42
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/clearcut/m;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/android/gms/internal/clearcut/m4;->d:Lcom/google/android/gms/internal/clearcut/m;

    .line 46
    .line 47
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lcom/google/android/gms/internal/clearcut/m4;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    new-instance v1, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v1, Lcom/google/android/gms/internal/clearcut/m4;->f:Ljava/util/HashMap;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    sput-object v1, Lcom/google/android/gms/internal/clearcut/m4;->g:Ljava/lang/Boolean;

    .line 63
    .line 64
    sput-object v1, Lcom/google/android/gms/internal/clearcut/m4;->h:Ljava/lang/Long;

    .line 65
    .line 66
    sget-object v1, Lcom/google/android/gms/internal/clearcut/e;->g:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v1, Lcom/google/android/gms/internal/clearcut/h;

    .line 69
    .line 70
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/clearcut/h;-><init>(Lcom/google/android/gms/internal/clearcut/m;Ljava/lang/Boolean;)V

    .line 73
    .line 74
    .line 75
    sput-object v1, Lcom/google/android/gms/internal/clearcut/m4;->i:Lcom/google/android/gms/internal/clearcut/h;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/m4;->a:Landroid/content/Context;

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/clearcut/e;->h:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/clearcut/e;->g:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x18

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/core/app/e;->m(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object p1, v1

    .line 36
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/e;->h:Landroid/content/Context;

    .line 37
    .line 38
    if-eq v1, p1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    sput-object v1, Lcom/google/android/gms/internal/clearcut/e;->i:Ljava/lang/Boolean;

    .line 42
    .line 43
    :cond_2
    sput-object p1, Lcom/google/android/gms/internal/clearcut/e;->h:Landroid/content/Context;

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_3
    :goto_1
    return-void
.end method

.method public static a(JLjava/lang/String;)J
    .locals 2

    const/16 v0, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/m4;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length v1, p2

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lb8/f;->v0([B)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lb8/f;->v0([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(JJJ)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    cmp-long v2, p4, v0

    if-lez v2, :cond_2

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    rem-long v2, v0, p4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    and-long/2addr p0, v0

    rem-long/2addr p0, p4

    add-long/2addr p0, v2

    :goto_0
    rem-long/2addr p0, p4

    cmp-long p4, p0, p2

    if-gez p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/clearcut/m4;->g:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Ly3/b;->a:Landroid/content/Context;

    .line 10
    .line 11
    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/google/android/gms/internal/clearcut/m4;->g:Ljava/lang/Boolean;

    .line 27
    .line 28
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/clearcut/m4;->g:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/clearcut/m4;->h:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/m4;->c(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/clearcut/p4;->a:Landroid/net/Uri;

    .line 20
    .line 21
    const-class v2, Lcom/google/android/gms/internal/clearcut/p4;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/p4;->c(Landroid/content/ContentResolver;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/google/android/gms/internal/clearcut/p4;->k:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sget-object v2, Lcom/google/android/gms/internal/clearcut/p4;->i:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "android_id"

    .line 37
    .line 38
    invoke-static {v2, v5, v4}, Lcom/google/android/gms/internal/clearcut/p4;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Long;

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-static {p0, v5}, Lcom/google/android/gms/internal/clearcut/p4;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    move-wide v0, v6

    .line 67
    :catch_0
    :goto_0
    invoke-static {v3, v2, v5, v4}, Lcom/google/android/gms/internal/clearcut/p4;->e(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sput-object p0, Lcom/google/android/gms/internal/clearcut/m4;->h:Ljava/lang/Long;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    return-wide v0

    .line 82
    :cond_4
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/m4;->h:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    return-wide v0
.end method
