.class public final Llh/c$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llh/c;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRRepository"
    f = "MobileAccidentGenerateQRRepository.kt"
    l = {
        0x8a,
        0x8b
    }
    m = "checkQR"
.end annotation


# instance fields
.field public a:Llh/c;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Llh/c;

.field public d:I


# direct methods
.method public constructor <init>(Llh/c;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llh/c;",
            "Lp9/d<",
            "-",
            "Llh/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Llh/c$a;->c:Llh/c;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llh/c$a;->b:Ljava/lang/Object;

    iget p1, p0, Llh/c$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llh/c$a;->d:I

    iget-object p1, p0, Llh/c$a;->c:Llh/c;

    invoke-virtual {p1, p0}, Llh/c;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
