.class public final Ldh/b$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/b;->d(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverRepository"
    f = "MobileAccidentDriverRepository.kt"
    l = {
        0x4d,
        0x4e
    }
    m = "provideListOfCar"
.end annotation


# instance fields
.field public a:Ldh/b;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ldh/b;

.field public d:I


# direct methods
.method public constructor <init>(Ldh/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh/b;",
            "Lp9/d<",
            "-",
            "Ldh/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldh/b$a;->c:Ldh/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ldh/b$a;->b:Ljava/lang/Object;

    iget p1, p0, Ldh/b$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ldh/b$a;->d:I

    iget-object p1, p0, Ldh/b$a;->c:Ldh/b;

    invoke-virtual {p1, p0}, Ldh/b;->d(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
