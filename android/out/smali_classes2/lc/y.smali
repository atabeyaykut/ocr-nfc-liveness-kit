.class public final Llc/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llc/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llc/h<",
        "TR;>;"
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

.field public final b:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llc/h;Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llc/h<",
            "+TT;>;",
            "Lx9/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc/y;->a:Llc/h;

    iput-object p2, p0, Llc/y;->b:Lx9/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Llc/y$a;

    invoke-direct {v0, p0}, Llc/y$a;-><init>(Llc/y;)V

    return-object v0
.end method
