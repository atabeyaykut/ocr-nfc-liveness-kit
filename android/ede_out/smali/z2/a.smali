.class public final synthetic Lz2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz2/c;

.field public final synthetic b:Lu2/s;

.field public final synthetic c:Lr2/h;

.field public final synthetic d:Lu2/n;


# direct methods
.method public synthetic constructor <init>(Lz2/c;Lu2/j;Lr2/h;Lu2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/a;->a:Lz2/c;

    iput-object p2, p0, Lz2/a;->b:Lu2/s;

    iput-object p3, p0, Lz2/a;->c:Lr2/h;

    iput-object p4, p0, Lz2/a;->d:Lu2/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lz2/a;->b:Lu2/s;

    .line 2
    .line 3
    iget-object v1, p0, Lz2/a;->c:Lr2/h;

    .line 4
    .line 5
    iget-object v2, p0, Lz2/a;->d:Lu2/n;

    .line 6
    .line 7
    iget-object v3, p0, Lz2/a;->a:Lz2/c;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v4, Lz2/c;->f:Ljava/util/logging/Logger;

    .line 13
    .line 14
    :try_start_0
    iget-object v5, v3, Lz2/c;->c:Lv2/e;

    .line 15
    .line 16
    invoke-virtual {v0}, Lu2/s;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-interface {v5, v6}, Lv2/e;->get(Ljava/lang/String;)Lv2/m;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    const-string v2, "Transport backend \'%s\' is not registered"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v0}, Lu2/s;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v5, 0x0

    .line 36
    aput-object v0, v3, v5

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Lr2/h;->a(Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v5, v2}, Lv2/m;->b(Lu2/n;)Lu2/h;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v5, v3, Lz2/c;->e:Lc3/b;

    .line 59
    .line 60
    new-instance v6, Lz2/b;

    .line 61
    .line 62
    invoke-direct {v6, v3, v0, v2}, Lz2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v5, v6}, Lc3/b;->a(Lc3/b$a;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-interface {v1, v0}, Lr2/h;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "Error scheduling event "

    .line 77
    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, v0}, Lr2/h;->a(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method
