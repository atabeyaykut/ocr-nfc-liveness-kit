.class public final Lbh/a$b;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbh/a;->b(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionRepository"
    f = "MobileAccidentConditionRepository.kt"
    l = {
        0x48,
        0x49
    }
    m = "provideQuestionList"
.end annotation


# instance fields
.field public a:Lbh/a;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lbh/a;

.field public d:I


# direct methods
.method public constructor <init>(Lbh/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbh/a;",
            "Lp9/d<",
            "-",
            "Lbh/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbh/a$b;->c:Lbh/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbh/a$b;->b:Ljava/lang/Object;

    iget p1, p0, Lbh/a$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbh/a$b;->d:I

    iget-object p1, p0, Lbh/a$b;->c:Lbh/a;

    invoke-virtual {p1, p0}, Lbh/a;->b(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
