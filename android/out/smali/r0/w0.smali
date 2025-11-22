.class public final Lr0/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/w0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lr0/p;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lr0/w0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/w0$a<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:Lr0/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr0/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/w0;->b:Lr0/p;

    new-instance v0, Lr0/w0$a;

    invoke-direct {v0, p1}, Lr0/w0$a;-><init>(Lr0/p;)V

    iput-object v0, p0, Lr0/w0;->a:Lr0/w0$a;

    return-void
.end method
