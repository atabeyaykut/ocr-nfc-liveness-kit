.class public final Lz0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/j$b;
    }
.end annotation


# instance fields
.field public final a:Lq1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq1/i<",
            "Lv0/f;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr1/a$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq1/i;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lq1/i;-><init>(J)V

    iput-object v0, p0, Lz0/j;->a:Lq1/i;

    new-instance v0, Lz0/j$a;

    invoke-direct {v0}, Lz0/j$a;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lr1/a;->a(ILr1/a$b;)Lr1/a$c;

    move-result-object v0

    iput-object v0, p0, Lz0/j;->b:Lr1/a$c;

    return-void
.end method


# virtual methods
.method public final a(Lv0/f;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lz0/j;->b:Lr1/a$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr1/a$c;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lq1/l;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lz0/j$b;

    .line 11
    .line 12
    :try_start_0
    iget-object v1, v0, Lz0/j$b;->a:Ljava/security/MessageDigest;

    .line 13
    .line 14
    invoke-interface {p1, v1}, Lv0/f;->a(Ljava/security/MessageDigest;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lz0/j$b;->a:Ljava/security/MessageDigest;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v1, Lq1/m;->b:[C

    .line 24
    .line 25
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    :try_start_1
    array-length v3, p1

    .line 28
    if-ge v2, v3, :cond_0

    .line 29
    .line 30
    aget-byte v3, p1, v2

    .line 31
    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    .line 34
    mul-int/lit8 v4, v2, 0x2

    .line 35
    .line 36
    ushr-int/lit8 v5, v3, 0x4

    .line 37
    .line 38
    sget-object v6, Lq1/m;->a:[C

    .line 39
    .line 40
    aget-char v5, v6, v5

    .line 41
    .line 42
    aput-char v5, v1, v4

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    and-int/lit8 v3, v3, 0xf

    .line 47
    .line 48
    aget-char v3, v6, v3

    .line 49
    .line 50
    aput-char v3, v1, v4

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    .line 58
    .line 59
    .line 60
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    iget-object v1, p0, Lz0/j;->b:Lr1/a$c;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lr1/a$c;->release(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    iget-object v1, p0, Lz0/j;->b:Lr1/a$c;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lr1/a$c;->release(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final b(Lv0/f;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lz0/j;->a:Lq1/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz0/j;->a:Lq1/i;

    invoke-virtual {v1, p1}, Lq1/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lz0/j;->a(Lv0/f;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lz0/j;->a:Lq1/i;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lz0/j;->a:Lq1/i;

    invoke-virtual {v0, p1, v1}, Lq1/i;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
