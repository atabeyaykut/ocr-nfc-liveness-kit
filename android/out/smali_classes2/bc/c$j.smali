.class public Lbc/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbc/h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lbc/c;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/c;Ljava/util/concurrent/ConcurrentHashMap;Lx9/l;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc/c$j;->a:Lbc/c;

    iput-object p2, p0, Lbc/c$j;->b:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lbc/c$j;->c:Lx9/l;

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lbc/c$j;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic a(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p0, v7, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const-string v8, "storageManager"

    aput-object v8, v4, v6

    goto :goto_2

    :cond_2
    aput-object v5, v4, v6

    goto :goto_2

    :cond_3
    const-string v8, "compute"

    aput-object v8, v4, v6

    goto :goto_2

    :cond_4
    const-string v8, "map"

    aput-object v8, v4, v6

    :goto_2
    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_5

    aput-object v5, v4, v7

    goto :goto_3

    :cond_5
    const-string v5, "raceCondition"

    aput-object v5, v4, v7

    goto :goto_3

    :cond_6
    const-string v5, "recursionDetected"

    aput-object v5, v4, v7

    :goto_3
    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    const-string v5, "<init>"

    aput-object v5, v4, v3

    :cond_7
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Race condition detected on input "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ". Old value is "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " under "

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lbc/c$j;->a:Lbc/c;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lbc/c;->l(Ljava/lang/AssertionError;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbc/c$j;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lbc/c$l;->b:Lbc/c$l;

    .line 8
    .line 9
    sget-object v3, Lkc/e;->a:Lkc/e$a;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    invoke-static {v1}, Lkc/e;->a(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    move-object v1, v4

    .line 22
    :cond_0
    return-object v1

    .line 23
    :cond_1
    iget-object v1, p0, Lbc/c$j;->a:Lbc/c;

    .line 24
    .line 25
    iget-object v5, v1, Lbc/c;->a:Lbc/k;

    .line 26
    .line 27
    iget-object v6, v1, Lbc/c;->a:Lbc/k;

    .line 28
    .line 29
    invoke-interface {v5}, Lbc/k;->lock()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    sget-object v7, Lbc/c$l;->c:Lbc/c$l;

    .line 37
    .line 38
    const/4 v8, 0x3

    .line 39
    const-string v9, ""

    .line 40
    .line 41
    if-ne v5, v2, :cond_4

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v1, p1, v9}, Lbc/c;->k(Ljava/lang/Object;Ljava/lang/String;)Lbc/c$m;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    iget-boolean v10, v5, Lbc/c$m;->b:Z

    .line 50
    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    iget-object p1, v5, Lbc/c$m;->a:Ljava/lang/Object;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v5, v7

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {v8}, Lbc/c$j;->a(I)V

    .line 59
    .line 60
    .line 61
    throw v4

    .line 62
    :cond_4
    :goto_0
    if-ne v5, v7, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1, p1, v9}, Lbc/c;->k(Ljava/lang/Object;Ljava/lang/String;)Lbc/c$m;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-eqz v7, :cond_5

    .line 69
    .line 70
    iget-boolean v8, v7, Lbc/c$m;->b:Z

    .line 71
    .line 72
    if-nez v8, :cond_6

    .line 73
    .line 74
    iget-object p1, v7, Lbc/c$m;->a:Ljava/lang/Object;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-static {v8}, Lbc/c$j;->a(I)V

    .line 78
    .line 79
    .line 80
    throw v4

    .line 81
    :cond_6
    if-eqz v5, :cond_8

    .line 82
    .line 83
    invoke-static {v5}, Lkc/e;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    if-ne v5, v3, :cond_7

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    move-object v4, v5

    .line 90
    :goto_1
    move-object p1, v4

    .line 91
    :goto_2
    invoke-interface {v6}, Lbc/k;->unlock()V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_8
    :try_start_2
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v5, p0, Lbc/c$j;->c:Lx9/l;

    .line 99
    .line 100
    invoke-interface {v5, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-nez v5, :cond_9

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_9
    move-object v3, v5

    .line 108
    :goto_3
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    if-ne v3, v2, :cond_a

    .line 113
    .line 114
    invoke-interface {v6}, Lbc/k;->unlock()V

    .line 115
    .line 116
    .line 117
    return-object v5

    .line 118
    :cond_a
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lbc/c$j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :catchall_0
    move-exception v3

    .line 124
    :try_start_4
    invoke-static {v3}, Lx5/a;->n(Ljava/lang/Throwable;)Z

    .line 125
    .line 126
    .line 127
    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    if-nez v5, :cond_d

    .line 129
    .line 130
    iget-object v1, v1, Lbc/c;->b:Lbc/c$d;

    .line 131
    .line 132
    if-eq v3, v4, :cond_c

    .line 133
    .line 134
    :try_start_5
    new-instance v4, Lkc/e$b;

    .line 135
    .line 136
    invoke-direct {v4, v3}, Lkc/e$b;-><init>(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eq v0, v2, :cond_b

    .line 144
    .line 145
    invoke-virtual {p0, p1, v0}, Lbc/c$j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    throw p1

    .line 150
    :cond_b
    check-cast v1, Lbc/c$d$a;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    throw v3

    .line 156
    :cond_c
    check-cast v1, Lbc/c$d$a;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    throw v3

    .line 162
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    check-cast v3, Ljava/lang/RuntimeException;

    .line 166
    .line 167
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :catchall_1
    move-exception p1

    .line 169
    invoke-interface {v6}, Lbc/k;->unlock()V

    .line 170
    .line 171
    .line 172
    throw p1
.end method
