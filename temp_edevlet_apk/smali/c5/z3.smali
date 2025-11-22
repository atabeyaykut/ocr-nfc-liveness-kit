.class public final synthetic Lc5/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lc5/c4;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lc5/c4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/z3;->a:Lc5/c4;

    iput-object p2, p0, Lc5/z3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lc5/z3;->a:Lc5/c4;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/i7;->b:Lc5/o7;

    .line 4
    .line 5
    iget-object v1, v1, Lc5/o7;->c:Lc5/i;

    .line 6
    .line 7
    invoke-static {v1}, Lc5/o7;->I(Lc5/j7;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lc5/z3;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lc5/i;->D(Ljava/lang/String;)Lc5/m4;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "platform"

    .line 22
    .line 23
    const-string v5, "android"

    .line 24
    .line 25
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v4, "package_name"

    .line 29
    .line 30
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 34
    .line 35
    check-cast v0, Lc5/i4;

    .line 36
    .line 37
    iget-object v0, v0, Lc5/i4;->g:Lc5/e;

    .line 38
    .line 39
    invoke-virtual {v0}, Lc5/e;->g()V

    .line 40
    .line 41
    .line 42
    const-wide/32 v4, 0xb3b0

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "gmp_version"

    .line 50
    .line 51
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Lc5/m4;->H()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    const-string v2, "app_version"

    .line 63
    .line 64
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v1}, Lc5/m4;->B()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "app_version_int"

    .line 76
    .line 77
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lc5/m4;->C()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "dynamite_version"

    .line 89
    .line 90
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_1
    return-object v3
.end method
