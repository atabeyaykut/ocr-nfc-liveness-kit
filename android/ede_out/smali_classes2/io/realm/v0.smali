.class public abstract Lio/realm/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/s0;


# static fields
.field static final MSG_DELETED_OBJECT:Ljava/lang/String; = "the object is already deleted."

.field static final MSG_DYNAMIC_OBJECT:Ljava/lang/String; = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

.field static final MSG_NULL_OBJECT:Ljava/lang/String; = "\'model\' is null."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lio/realm/s0;Lio/realm/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;",
            "Lio/realm/n0<",
            "TE;>;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/f0$a;

    invoke-direct {v0, p1}, Lio/realm/f0$a;-><init>(Lio/realm/n0;)V

    invoke-static {p0, v0}, Lio/realm/v0;->addChangeListener(Lio/realm/s0;Lio/realm/w0;)V

    return-void
.end method

.method public static addChangeListener(Lio/realm/s0;Lio/realm/w0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;",
            "Lio/realm/w0<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    instance-of v0, p0, Lio/realm/internal/n;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p0, Lio/realm/internal/n;

    .line 10
    .line 11
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 21
    .line 22
    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    .line 23
    .line 24
    const-string v1, "Listeners cannot be used on current thread."

    .line 25
    .line 26
    check-cast v0, Le9/a;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Le9/a;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object v0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 36
    .line 37
    instance-of v1, v0, Lio/realm/internal/l;

    .line 38
    .line 39
    iget-object v2, p0, Lio/realm/f0;->a:Lio/realm/s0;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object p0, p0, Lio/realm/f0;->h:Lio/realm/internal/k;

    .line 44
    .line 45
    new-instance v0, Lio/realm/internal/OsObject$b;

    .line 46
    .line 47
    invoke-direct {v0, v2, p1}, Lio/realm/internal/OsObject$b;-><init>(Lio/realm/s0;Lio/realm/w0;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lio/realm/internal/k;->a(Lio/realm/internal/k$b;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lio/realm/f0;->b()V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lio/realm/f0;->d:Lio/realm/internal/OsObject;

    .line 62
    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, v2, p1}, Lio/realm/internal/OsObject;->addListener(Lio/realm/s0;Lio/realm/w0;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p1, "Listener should not be null"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p1, "Object should not be null"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public static asChangesetObservable(Lio/realm/s0;)Ly8/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)",
            "Ly8/d<",
            "Lj9/a<",
            "TE;>;>;"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/n;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 2
    instance-of v1, v0, Lio/realm/g0;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lio/realm/a;->c:Lio/realm/o0;

    invoke-virtual {v1}, Lio/realm/o0;->b()Lj9/c;

    move-result-object v1

    check-cast v0, Lio/realm/g0;

    check-cast v1, Lj9/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Lio/realm/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lj9/a;

    invoke-direct {v0, p0}, Lj9/a;-><init>(Lio/realm/s0;)V

    .line 4
    new-instance p0, Lb9/d;

    invoke-direct {p0, v0}, Lb9/d;-><init>(Lj9/a;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lj9/b;->a()Lz8/b;

    .line 6
    new-instance p0, Lb9/b;

    invoke-direct {p0}, Lb9/b;-><init>()V

    .line 7
    new-instance p0, Lb9/g;

    invoke-direct {p0}, Lb9/g;-><init>()V

    .line 8
    new-instance p0, Lb9/h;

    invoke-direct {p0}, Lb9/h;-><init>()V

    :goto_0
    return-object p0

    .line 9
    :cond_1
    instance-of v1, v0, Lio/realm/n;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lio/realm/n;

    check-cast p0, Lio/realm/p;

    iget-object v0, v0, Lio/realm/a;->c:Lio/realm/o0;

    invoke-virtual {v0}, Lio/realm/o0;->b()Lj9/c;

    move-result-object v0

    check-cast v0, Lj9/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v1}, Lio/realm/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lj9/a;

    invoke-direct {v0, p0}, Lj9/a;-><init>(Lio/realm/s0;)V

    .line 11
    new-instance p0, Lb9/d;

    invoke-direct {p0, v0}, Lb9/d;-><init>(Lj9/a;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Lj9/b;->a()Lz8/b;

    .line 13
    new-instance p0, Lb9/b;

    invoke-direct {p0}, Lb9/b;-><init>()V

    .line 14
    new-instance p0, Lb9/g;

    invoke-direct {p0}, Lb9/g;-><init>()V

    .line 15
    new-instance p0, Lb9/h;

    invoke-direct {p0}, Lb9/h;-><init>()V

    :goto_1
    return-object p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asFlowable(Lio/realm/s0;)Ly8/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)",
            "Ly8/b<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/n;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 2
    instance-of v1, v0, Lio/realm/g0;

    const-string v2, "item is null"

    if-eqz v1, :cond_2

    iget-object v1, v0, Lio/realm/a;->c:Lio/realm/o0;

    invoke-virtual {v1}, Lio/realm/o0;->b()Lj9/c;

    move-result-object v1

    check-cast v0, Lio/realm/g0;

    check-cast v1, Lj9/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Lio/realm/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Ly8/b;->a:I

    if-eqz p0, :cond_0

    .line 4
    new-instance v0, La9/d;

    invoke-direct {v0, p0}, La9/d;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    invoke-static {}, Lj9/b;->a()Lz8/b;

    sget p0, Ly8/b;->a:I

    .line 7
    new-instance p0, La9/b;

    invoke-direct {p0}, La9/b;-><init>()V

    .line 8
    new-instance v0, La9/f;

    invoke-direct {v0, p0}, La9/f;-><init>(La9/b;)V

    .line 9
    new-instance p0, La9/g;

    invoke-direct {p0, v0}, La9/g;-><init>(Lsd/a;)V

    move-object v0, p0

    :goto_0
    return-object v0

    .line 10
    :cond_2
    instance-of v1, v0, Lio/realm/n;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lio/realm/n;

    check-cast p0, Lio/realm/p;

    iget-object v0, v0, Lio/realm/a;->c:Lio/realm/o0;

    invoke-virtual {v0}, Lio/realm/o0;->b()Lj9/c;

    move-result-object v0

    check-cast v0, Lj9/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v1}, Lio/realm/a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Ly8/b;->a:I

    if-eqz p0, :cond_3

    .line 12
    new-instance v0, La9/d;

    invoke-direct {v0, p0}, La9/d;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    invoke-static {}, Lj9/b;->a()Lz8/b;

    sget p0, Ly8/b;->a:I

    .line 15
    new-instance p0, La9/b;

    invoke-direct {p0}, La9/b;-><init>()V

    .line 16
    new-instance v0, La9/f;

    invoke-direct {v0, p0}, La9/f;-><init>(La9/b;)V

    .line 17
    new-instance p0, La9/g;

    invoke-direct {p0, v0}, La9/g;-><init>(Lsd/a;)V

    move-object v0, p0

    :goto_1
    return-object v0

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleteFromRealm(Lio/realm/s0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p0, Lio/realm/internal/n;

    .line 6
    .line 7
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 37
    .line 38
    invoke-interface {v0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0}, Lio/realm/internal/p;->Y()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->r(J)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object v0, Lio/realm/internal/g;->a:Lio/realm/internal/g;

    .line 54
    .line 55
    iput-object v0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string v0, "Object not managed by Realm, so it cannot be removed."

    .line 77
    .line 78
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public static freeze(Lio/realm/s0;)Lio/realm/s0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lio/realm/internal/n;

    .line 7
    .line 8
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lio/realm/f0;->e:Lio/realm/a;

    .line 13
    .line 14
    invoke-virtual {v1}, Lio/realm/a;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move-object v5, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lio/realm/a;->d()Lio/realm/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v5, v2

    .line 27
    :goto_0
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 32
    .line 33
    iget-object v2, v5, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 34
    .line 35
    invoke-interface {v0, v2}, Lio/realm/internal/p;->X(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/p;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    instance-of v0, v5, Lio/realm/n;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance p0, Lio/realm/p;

    .line 44
    .line 45
    invoke-direct {p0, v5, v6}, Lio/realm/p;-><init>(Lio/realm/a;Lio/realm/internal/p;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    instance-of v0, v5, Lio/realm/g0;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object p0, v5, Lio/realm/a;->c:Lio/realm/o0;

    .line 62
    .line 63
    iget-object v3, p0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 64
    .line 65
    invoke-virtual {v1}, Lio/realm/a;->i()Lio/realm/z0;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v4}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const/4 v8, 0x0

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual/range {v3 .. v9}, Lio/realm/internal/o;->n(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/s0;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "Unknown Realm type: "

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string v0, "It is only possible to freeze valid managed Realm objects."

    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method public static getRealm(Lio/realm/s0;)Lio/realm/g0;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    instance-of v0, p0, Lio/realm/p;

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p0, Lio/realm/internal/n;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    move-object v0, p0

    .line 14
    check-cast v0, Lio/realm/internal/n;

    .line 15
    .line 16
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    check-cast v0, Lio/realm/g0;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "the object is already deleted."

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "\'model\' is null."

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static isFrozen(Lio/realm/s0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lio/realm/internal/n;

    .line 6
    .line 7
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lio/realm/f0;->e:Lio/realm/a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/realm/a;->j()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static isLoaded(Lio/realm/s0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lio/realm/internal/n;

    .line 6
    .line 7
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 21
    .line 22
    invoke-interface {p0}, Lio/realm/internal/p;->F()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public static isManaged(Lio/realm/s0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)Z"
        }
    .end annotation

    instance-of p0, p0, Lio/realm/internal/n;

    return p0
.end method

.method public static isValid(Lio/realm/s0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p0, Lio/realm/internal/n;

    .line 8
    .line 9
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Lio/realm/internal/p;->isValid()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1

    .line 26
    :cond_1
    if-eqz p0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_1
    return v1
.end method

.method public static load(Lio/realm/s0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/realm/v0;->isLoaded(Lio/realm/s0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p0, Lio/realm/internal/n;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    check-cast p0, Lio/realm/internal/n;

    .line 14
    .line 15
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 20
    .line 21
    instance-of v0, p0, Lio/realm/internal/l;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    check-cast p0, Lio/realm/internal/l;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "The query has been executed. This \'PendingRow\' is not valid anymore."

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_2
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public static removeAllChangeListeners(Lio/realm/s0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/n;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p0, Lio/realm/internal/n;

    .line 6
    .line 7
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/realm/a;->isClosed()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-array v1, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 23
    .line 24
    iget-object v0, v0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v0, v1, v3

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 32
    .line 33
    invoke-static {v0, v3, v4, v1}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object v0, p0, Lio/realm/f0;->d:Lio/realm/internal/OsObject;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lio/realm/f0;->a:Lio/realm/s0;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/s0;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p0, p0, Lio/realm/f0;->h:Lio/realm/internal/k;

    .line 51
    .line 52
    iput-boolean v2, p0, Lio/realm/internal/k;->b:Z

    .line 53
    .line 54
    iget-object p0, p0, Lio/realm/internal/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v0, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public static removeChangeListener(Lio/realm/s0;Lio/realm/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;",
            "Lio/realm/n0<",
            "TE;>;)V"
        }
    .end annotation

    new-instance v0, Lio/realm/f0$a;

    invoke-direct {v0, p1}, Lio/realm/f0$a;-><init>(Lio/realm/n0;)V

    invoke-static {p0, v0}, Lio/realm/v0;->removeChangeListener(Lio/realm/s0;Lio/realm/w0;)V

    return-void
.end method

.method public static removeChangeListener(Lio/realm/s0;Lio/realm/w0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(TE;",
            "Lio/realm/w0;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    instance-of v0, p0, Lio/realm/internal/n;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p0, Lio/realm/internal/n;

    .line 10
    .line 11
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/realm/a;->isClosed()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 27
    .line 28
    iget-object v0, v0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object v0, v1, v2

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    .line 36
    .line 37
    invoke-static {v0, v2, v3, v1}, Lio/realm/log/RealmLog;->a(ILjava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object v0, p0, Lio/realm/f0;->d:Lio/realm/internal/OsObject;

    .line 45
    .line 46
    iget-object v1, p0, Lio/realm/f0;->a:Lio/realm/s0;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/s0;Lio/realm/w0;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p0, p0, Lio/realm/f0;->h:Lio/realm/internal/k;

    .line 55
    .line 56
    invoke-virtual {p0, v1, p1}, Lio/realm/internal/k;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string p1, "Listener should not be null"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string p1, "Object should not be null"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/n0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Lio/realm/n0<",
            "TE;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/realm/v0;->addChangeListener(Lio/realm/s0;Lio/realm/n0;)V

    return-void
.end method

.method public final addChangeListener(Lio/realm/w0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Lio/realm/w0<",
            "TE;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/realm/v0;->addChangeListener(Lio/realm/s0;Lio/realm/w0;)V

    return-void
.end method

.method public final asChangesetObservable()Ly8/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/v0;",
            ">()",
            "Ly8/d<",
            "Lj9/a<",
            "TE;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lio/realm/v0;->asChangesetObservable(Lio/realm/s0;)Ly8/d;

    move-result-object v0

    return-object v0
.end method

.method public final asFlowable()Ly8/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/v0;",
            ">()",
            "Ly8/b<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lio/realm/v0;->asFlowable(Lio/realm/s0;)Ly8/b;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .locals 0

    invoke-static {p0}, Lio/realm/v0;->deleteFromRealm(Lio/realm/s0;)V

    return-void
.end method

.method public final freeze()Lio/realm/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">()TE;"
        }
    .end annotation

    invoke-static {p0}, Lio/realm/v0;->freeze(Lio/realm/s0;)Lio/realm/s0;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Lio/realm/g0;
    .locals 1

    invoke-static {p0}, Lio/realm/v0;->getRealm(Lio/realm/s0;)Lio/realm/g0;

    move-result-object v0

    return-object v0
.end method

.method public final isFrozen()Z
    .locals 1

    invoke-static {p0}, Lio/realm/v0;->isFrozen(Lio/realm/s0;)Z

    move-result v0

    return v0
.end method

.method public final isLoaded()Z
    .locals 1

    invoke-static {p0}, Lio/realm/v0;->isLoaded(Lio/realm/s0;)Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    invoke-static {p0}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    invoke-static {p0}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .locals 1

    invoke-static {p0}, Lio/realm/v0;->load(Lio/realm/s0;)Z

    move-result v0

    return v0
.end method

.method public final removeAllChangeListeners()V
    .locals 0

    invoke-static {p0}, Lio/realm/v0;->removeAllChangeListeners(Lio/realm/s0;)V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/n0;)V
    .locals 0

    invoke-static {p0, p1}, Lio/realm/v0;->removeChangeListener(Lio/realm/s0;Lio/realm/n0;)V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/w0;)V
    .locals 0

    invoke-static {p0, p1}, Lio/realm/v0;->removeChangeListener(Lio/realm/s0;Lio/realm/w0;)V

    return-void
.end method
