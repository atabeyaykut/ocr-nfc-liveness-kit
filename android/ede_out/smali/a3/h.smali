.class public final synthetic La3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b$a;
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La3/h;->a:Ljava/lang/Object;

    iput-object p2, p0, La3/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lio/realm/g0;)V
    .locals 3

    .line 1
    iget-object v0, p0, La3/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 4
    .line 5
    iget-object v1, p0, La3/h;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->m:[Lda/m;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setScenarioId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La3/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La3/m;

    .line 4
    .line 5
    iget-object v1, p0, La3/h;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lu2/s;

    .line 8
    .line 9
    iget-object v0, v0, La3/m;->c:Lb3/d;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lb3/d;->V(Lu2/s;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
