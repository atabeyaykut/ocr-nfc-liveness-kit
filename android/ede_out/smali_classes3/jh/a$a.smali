.class public final Ljh/a$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljh/a;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionRepository"
    f = "MobileAccidentIntroductionRepository.kt"
    l = {
        0x44,
        0x45
    }
    m = "checkDrivingLicence"
.end annotation


# instance fields
.field public a:Ljh/a;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljh/a;

.field public d:I


# direct methods
.method public constructor <init>(Ljh/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljh/a;",
            "Lp9/d<",
            "-",
            "Ljh/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljh/a$a;->c:Ljh/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ljh/a$a;->b:Ljava/lang/Object;

    iget p1, p0, Ljh/a$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ljh/a$a;->d:I

    iget-object p1, p0, Ljh/a$a;->c:Ljh/a;

    invoke-virtual {p1, p0}, Ljh/a;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
