.class public abstract Lr0/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lr0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/r<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final c:Lnc/a0;


# direct methods
.method public constructor <init>(ZLr0/c;Lkotlinx/coroutines/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr0/i0;->a:Z

    iput-object p2, p0, Lr0/i0;->b:Lr0/r;

    iput-object p3, p0, Lr0/i0;->c:Lnc/a0;

    return-void
.end method
