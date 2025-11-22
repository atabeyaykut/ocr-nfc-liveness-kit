.class public final Lle/b;
.super Landroidx/work/WorkerFactory;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/CoroutineWorker;",
            ">;",
            "Lk9/a<",
            "Lle/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lud/d0;

.field public c:Lud/d0;

.field public d:Lud/d0;

.field public e:Lud/d0;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/CoroutineWorker;",
            ">;",
            "Lk9/a<",
            "Lle/a;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "workerFactories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/work/WorkerFactory;-><init>()V

    iput-object p1, p0, Lle/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final createWorker(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 11

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "workerClassName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "workerParameters"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lle/b;->a:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    move-object v6, v4

    .line 38
    check-cast v6, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Ljava/lang/Class;

    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v4, v5

    .line 58
    :goto_0
    check-cast v4, Ljava/util/Map$Entry;

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lk9/a;

    .line 68
    .line 69
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v1, v0

    .line 74
    check-cast v1, Lle/a;

    .line 75
    .line 76
    iget-object v4, p0, Lle/b;->b:Lud/d0;

    .line 77
    .line 78
    if-eqz v4, :cond_9

    .line 79
    .line 80
    iget-object v0, p0, Lle/b;->c:Lud/d0;

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    .line 84
    iget-object v6, p0, Lle/b;->d:Lud/d0;

    .line 85
    .line 86
    if-eqz v6, :cond_7

    .line 87
    .line 88
    iget-object v7, p0, Lle/b;->e:Lud/d0;

    .line 89
    .line 90
    if-eqz v7, :cond_6

    .line 91
    .line 92
    iget-object v8, p0, Lle/b;->f:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    iget-object v9, p0, Lle/b;->h:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v9, :cond_4

    .line 99
    .line 100
    iget-object v10, p0, Lle/b;->g:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v10, :cond_3

    .line 103
    .line 104
    move-object v2, p1

    .line 105
    move-object v3, p3

    .line 106
    move-object v5, v0

    .line 107
    invoke-interface/range {v1 .. v10}, Lle/a;->a(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/work/CoroutineWorker;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    :goto_1
    return-object v5

    .line 112
    :cond_3
    const-string v0, "mAppMode"

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v5

    .line 118
    :cond_4
    const-string v0, "mLanguage"

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v5

    .line 124
    :cond_5
    const-string v0, "mAppVersion"

    .line 125
    .line 126
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v5

    .line 130
    :cond_6
    const-string v0, "mOTPRestClient"

    .line 131
    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v5

    .line 136
    :cond_7
    const-string v0, "mRegisterApiClient"

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v5

    .line 142
    :cond_8
    const-string v0, "mApiClientLogin"

    .line 143
    .line 144
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v5

    .line 148
    :cond_9
    const-string v0, "mApiClient"

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v5
.end method
