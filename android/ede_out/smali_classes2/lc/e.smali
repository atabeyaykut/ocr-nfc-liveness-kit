.class public final Llc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llc/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llc/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Llc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llc/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llc/h;ZLx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llc/h<",
            "+TT;>;Z",
            "Lx9/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc/e;->a:Llc/h;

    iput-boolean p2, p0, Llc/e;->b:Z

    iput-object p3, p0, Llc/e;->c:Lx9/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Llc/e$a;

    invoke-direct {v0, p0}, Llc/e$a;-><init>(Llc/e;)V

    return-object v0
.end method
