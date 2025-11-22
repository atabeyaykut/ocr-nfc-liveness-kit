.class public final Lio/realm/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/realm/a;


# direct methods
.method public constructor <init>(Lio/realm/a;)V
    .locals 0

    iput-object p1, p0, Lio/realm/a$a;->a:Lio/realm/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSchemaChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/a$a;->a:Lio/realm/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, v1, Lio/realm/z0;->g:Lio/realm/internal/b;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v3, v2, Lio/realm/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Class;

    .line 40
    .line 41
    iget-object v6, v2, Lio/realm/internal/b;->c:Lio/realm/internal/OsSchemaInfo;

    .line 42
    .line 43
    iget-object v7, v2, Lio/realm/internal/b;->b:Lio/realm/internal/o;

    .line 44
    .line 45
    invoke-virtual {v7, v5, v6}, Lio/realm/internal/o;->b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lio/realm/internal/c;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Lio/realm/internal/c;->c(Lio/realm/internal/c;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, v1, Lio/realm/z0;->a:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 62
    .line 63
    .line 64
    iget-object v2, v1, Lio/realm/z0;->b:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 67
    .line 68
    .line 69
    iget-object v2, v1, Lio/realm/z0;->c:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 72
    .line 73
    .line 74
    iget-object v2, v1, Lio/realm/z0;->d:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 77
    .line 78
    .line 79
    :cond_1
    instance-of v0, v0, Lio/realm/g0;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 87
    .line 88
    iget-object v2, v1, Lio/realm/z0;->f:Lio/realm/a;

    .line 89
    .line 90
    iget-object v2, v2, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 91
    .line 92
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-direct {v0, v2, v3}, Lio/realm/internal/objectstore/OsKeyPathMapping;-><init>(J)V

    .line 97
    .line 98
    .line 99
    iput-object v0, v1, Lio/realm/z0;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    .line 100
    .line 101
    :cond_2
    return-void
.end method
