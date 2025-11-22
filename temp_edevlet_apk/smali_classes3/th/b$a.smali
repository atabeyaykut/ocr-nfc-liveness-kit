.class public final Lth/b$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lth/b;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingRepository"
    f = "MobileAccidentOnboardingRepository.kt"
    l = {
        0x7d,
        0x7e
    }
    m = "checkControlClarification"
.end annotation


# instance fields
.field public a:Lth/b;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lth/b;

.field public d:I


# direct methods
.method public constructor <init>(Lth/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lth/b;",
            "Lp9/d<",
            "-",
            "Lth/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lth/b$a;->c:Lth/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lth/b$a;->b:Ljava/lang/Object;

    iget p1, p0, Lth/b$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lth/b$a;->d:I

    iget-object p1, p0, Lth/b$a;->c:Lth/b;

    invoke-virtual {p1, p0}, Lth/b;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
