.class public final Lh6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh6/x;


# direct methods
.method public constructor <init>(Lh6/x;)V
    .locals 0

    iput-object p1, p0, Lh6/y;->a:Lh6/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/y;->a:Lh6/x;

    .line 2
    .line 3
    iget-object v0, v0, Lh6/x;->f:Lh6/t;

    .line 4
    .line 5
    iget-object v1, v0, Lh6/t;->c:Lx0/t;

    .line 6
    .line 7
    iget-object v2, v1, Lx0/t;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lm6/f;

    .line 10
    .line 11
    iget-object v3, v1, Lx0/t;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/io/File;

    .line 19
    .line 20
    iget-object v2, v2, Lm6/f;->a:Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Lh6/t;->k:Lh6/m0;

    .line 33
    .line 34
    iget-object v1, v1, Lh6/m0;->b:Lm6/e;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/util/TreeSet;

    .line 40
    .line 41
    iget-object v1, v1, Lm6/e;->b:Lm6/f;

    .line 42
    .line 43
    iget-object v1, v1, Lm6/f;->b:Ljava/io/File;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lm6/f;->d([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v2, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_0

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v3, v1

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    :cond_0
    if-eqz v3, :cond_1

    .line 74
    .line 75
    iget-object v0, v0, Lh6/t;->i:Le6/a;

    .line 76
    .line 77
    invoke-interface {v0, v3}, Le6/a;->d(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v0, 0x2

    .line 87
    const-string v2, "FirebaseCrashlytics"

    .line 88
    .line 89
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const-string v0, "Found previous crash marker."

    .line 96
    .line 97
    invoke-static {v2, v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, v1, Lx0/t;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Lm6/f;

    .line 103
    .line 104
    iget-object v1, v1, Lx0/t;->a:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v2, Ljava/io/File;

    .line 112
    .line 113
    iget-object v0, v0, Lm6/f;->a:Ljava/io/File;

    .line 114
    .line 115
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 119
    .line 120
    .line 121
    :goto_0
    const/4 v0, 0x1

    .line 122
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0
.end method
