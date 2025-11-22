.class public final Lhf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/s;


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhf/b;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a(Lwc/f;)Lrc/b0;
    .locals 8

    .line 1
    iget-object v0, p1, Lwc/f;->f:Lrc/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lrc/x;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lrc/x;->e:Lrc/a0;

    .line 14
    .line 15
    iget-object v1, v0, Lrc/x;->f:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v1}, Lm9/e0;->V0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    iget-object v2, v0, Lrc/x;->d:Lrc/q;

    .line 34
    .line 35
    invoke-virtual {v2}, Lrc/q;->u()Lrc/q$a;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, ""

    .line 40
    .line 41
    iget-object v5, p0, Lhf/b;->a:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    const-string v7, "user-agent"

    .line 44
    .line 45
    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v5, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 61
    :goto_2
    if-nez v5, :cond_3

    .line 62
    .line 63
    const-string v5, "value"

    .line 64
    .line 65
    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "User-Agent"

    .line 69
    .line 70
    invoke-virtual {v2, v5, v3}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v3, v0, Lrc/x;->b:Lrc/r;

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    invoke-virtual {v2}, Lrc/q$a;->c()Lrc/q;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sget-object v0, Lsc/c;->a:[B

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    sget-object v0, Lm9/w;->a:Lm9/w;

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "Collections.unmodifiableMap(LinkedHashMap(this))"

    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_3
    move-object v7, v0

    .line 107
    new-instance v0, Lrc/x;

    .line 108
    .line 109
    move-object v2, v0

    .line 110
    invoke-direct/range {v2 .. v7}, Lrc/x;-><init>(Lrc/r;Ljava/lang/String;Lrc/q;Lrc/a0;Ljava/util/Map;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lwc/f;->c(Lrc/x;)Lrc/b0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v0, "url == null"

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method
