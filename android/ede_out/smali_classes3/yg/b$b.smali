.class public final Lyg/b$b;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/b;->b(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementRepository"
    f = "MobileAccidentAgreementRepository.kt"
    l = {
        0x47,
        0x48
    }
    m = "provideClarificationText"
.end annotation


# instance fields
.field public a:Lyg/b;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyg/b;

.field public d:I


# direct methods
.method public constructor <init>(Lyg/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/b;",
            "Lp9/d<",
            "-",
            "Lyg/b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/b$b;->c:Lyg/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyg/b$b;->b:Ljava/lang/Object;

    iget p1, p0, Lyg/b$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyg/b$b;->d:I

    iget-object p1, p0, Lyg/b$b;->c:Lyg/b;

    invoke-virtual {p1, p0}, Lyg/b;->b(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
