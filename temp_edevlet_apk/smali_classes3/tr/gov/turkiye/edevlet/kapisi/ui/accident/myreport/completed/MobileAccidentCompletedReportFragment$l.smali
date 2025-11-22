.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;",
        ">;>;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment$onCreate$8"
    f = "MobileAccidentCompletedReportFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lr0/b;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lr0/b;

    .line 7
    .line 8
    instance-of v0, p1, Lr0/d1;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment$l;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 21
    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Lv/e;->show()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->g:Lv/e;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :try_start_0
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->G(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    instance-of v0, p1, Lr0/i;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    check-cast p1, Lr0/i;

    .line 48
    .line 49
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 50
    .line 51
    invoke-static {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/MobileAccidentCompletedReportFragment;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_4
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 55
    .line 56
    return-object p1
.end method
