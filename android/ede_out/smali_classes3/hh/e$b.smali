.class public final Lhh/e$b;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhh/e;->c(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationRepository"
    f = "MobileAccidentInformationRepository.kt"
    l = {
        0x128,
        0x129
    }
    m = "saveLocation"
.end annotation


# instance fields
.field public a:Lhh/e;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lhh/e;

.field public f:I


# direct methods
.method public constructor <init>(Lhh/e;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhh/e;",
            "Lp9/d<",
            "-",
            "Lhh/e$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhh/e$b;->e:Lhh/e;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lhh/e$b;->d:Ljava/lang/Object;

    iget p1, p0, Lhh/e$b;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lhh/e$b;->f:I

    iget-object p1, p0, Lhh/e$b;->e:Lhh/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lhh/e;->c(Ljava/lang/String;Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
