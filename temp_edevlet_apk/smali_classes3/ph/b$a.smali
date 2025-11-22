.class public final Lph/b$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lph/b;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalRepository"
    f = "MobileAccidentWaitingApprovalRepository.kt"
    l = {
        0x4c,
        0x4d
    }
    m = "checkApproval"
.end annotation


# instance fields
.field public a:Lph/b;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lph/b;

.field public d:I


# direct methods
.method public constructor <init>(Lph/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lph/b;",
            "Lp9/d<",
            "-",
            "Lph/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lph/b$a;->c:Lph/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lph/b$a;->b:Ljava/lang/Object;

    iget p1, p0, Lph/b$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lph/b$a;->d:I

    iget-object p1, p0, Lph/b$a;->c:Lph/b;

    invoke-virtual {p1, p0}, Lph/b;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
