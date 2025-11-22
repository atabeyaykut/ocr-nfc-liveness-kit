.class public final Llc/x;
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

.field public final b:Lx9/l;
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
.method public constructor <init>(Llc/h;Lma/x0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc/x;->a:Llc/h;

    iput-object p2, p0, Llc/x;->b:Lx9/l;

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

    new-instance v0, Llc/x$a;

    invoke-direct {v0, p0}, Llc/x$a;-><init>(Llc/x;)V

    return-object v0
.end method
