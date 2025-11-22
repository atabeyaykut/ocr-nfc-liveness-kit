.class public final synthetic La3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b$a;
.implements Lr2/h;
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La3/j;->a:Ljava/lang/Object;

    iput-object p2, p0, La3/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, La3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/l;

    .line 4
    .line 5
    iget-object v1, p0, La3/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lh6/a0;

    .line 8
    .line 9
    sget-object v2, Ln6/a;->b:Lk6/a;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lh5/l;->c(Ljava/lang/Exception;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final d(Lio/realm/g0;)V
    .locals 4

    .line 1
    iget-object v0, p0, La3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointInfo;

    .line 4
    .line 5
    iget-object v1, p0, La3/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 8
    .line 9
    const-string v2, "it"

    .line 10
    .line 11
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointInfo;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setDashPointId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveDashPointInfo;->getDashPoint()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setDashPoint(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1, v1}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La3/m;

    .line 4
    .line 5
    iget-object v1, p0, La3/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    .line 9
    iget-object v0, v0, La3/m;->c:Lb3/d;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lb3/d;->x(Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
