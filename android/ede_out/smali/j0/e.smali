.class public final Lj0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/m;
.implements Lcom/google/android/gms/internal/clearcut/k;
.implements Lh5/e;
.implements Lh5/g;
.implements Lp4/t9;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p1, v1, :cond_1

    int-to-float p1, p1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    :goto_0
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2
    iput-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lh5/h;)V
    .locals 0

    iput-object p1, p0, Lj0/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lj0/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lp4/y9;
    .locals 3

    .line 1
    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/o7;

    .line 4
    .line 5
    new-instance v1, Lp4/q7;

    .line 6
    .line 7
    invoke-direct {v1}, Lp4/q7;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lp4/d8;

    .line 11
    .line 12
    invoke-direct {v2}, Lp4/d8;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v2, Lp4/d8;->a:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Lp4/e8;

    .line 18
    .line 19
    invoke-direct {v0, v2}, Lp4/e8;-><init>(Lp4/d8;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, v1, Lp4/q7;->e:Lp4/e8;

    .line 23
    .line 24
    new-instance v0, Lp4/y9;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v0, v1, v2}, Lp4/y9;-><init>(Lp4/q7;I)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Lh5/k;)V
    .locals 2

    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    check-cast v0, Lh5/l;

    invoke-virtual {p1}, Lh5/k;->m()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lh5/k;->h()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method

.method public final c()Lg0/a;
    .locals 3

    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/a;

    invoke-virtual {v1}, Lq0/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lg0/j;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lg0/j;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_0
    new-instance v1, Lg0/i;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lg0/i;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 4

    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/a;

    invoke-virtual {v0}, Lq0/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final g()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/clearcut/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/clearcut/e;->h:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/e;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/clearcut/p4;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final h(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj0/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lj0/e;->a:Ljava/lang/Object;

    check-cast p1, Lh5/h;

    invoke-interface {p1}, Lh5/h;->a()V

    return-void
.end method
