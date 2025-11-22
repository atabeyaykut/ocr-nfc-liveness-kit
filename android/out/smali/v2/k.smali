.class public final Lv2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/k$a;
    }
.end annotation


# instance fields
.field public final a:Lv2/k$a;

.field public final b:Lv2/i;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv2/i;)V
    .locals 1

    .line 1
    new-instance v0, Lv2/k$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lv2/k$a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lv2/k;->c:Ljava/util/HashMap;

    .line 15
    .line 16
    iput-object v0, p0, Lv2/k;->a:Lv2/k$a;

    .line 17
    .line 18
    iput-object p2, p0, Lv2/k;->b:Lv2/i;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/String;)Lv2/m;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lv2/k;->c:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lv2/k;->c:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lv2/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :cond_0
    :try_start_1
    iget-object v0, p0, Lv2/k;->a:Lv2/k$a;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lv2/k$a;->a(Ljava/lang/String;)Lv2/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_1
    :try_start_2
    iget-object v1, p0, Lv2/k;->b:Lv2/i;

    .line 32
    .line 33
    new-instance v2, Lv2/c;

    .line 34
    .line 35
    iget-object v3, v1, Lv2/i;->a:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v4, v1, Lv2/i;->b:Ld3/a;

    .line 38
    .line 39
    iget-object v1, v1, Lv2/i;->c:Ld3/a;

    .line 40
    .line 41
    invoke-direct {v2, v3, v4, v1, p1}, Lv2/c;-><init>(Landroid/content/Context;Ld3/a;Ld3/a;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v2}, Lv2/d;->create(Lv2/h;)Lv2/m;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lv2/k;->c:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-object v0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
.end method
