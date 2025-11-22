.class public final Lrh/b$d;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh/b;->i(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportRepository"
    f = "MobileAccidentCompletedReportRepository.kt"
    l = {
        0x172,
        0x173
    }
    m = "provideMergeReportDetails"
.end annotation


# instance fields
.field public a:Lrh/b;

.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lrh/b;

.field public e:I


# direct methods
.method public constructor <init>(Lrh/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrh/b;",
            "Lp9/d<",
            "-",
            "Lrh/b$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lrh/b$d;->d:Lrh/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lrh/b$d;->c:Ljava/lang/Object;

    iget p1, p0, Lrh/b$d;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lrh/b$d;->e:I

    iget-object p1, p0, Lrh/b$d;->d:Lrh/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lrh/b;->i(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
