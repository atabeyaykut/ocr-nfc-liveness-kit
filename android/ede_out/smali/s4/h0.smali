.class public final Ls4/h0;
.super Ls4/t0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ls4/i0;


# direct methods
.method public constructor <init>(Ls4/i0;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Ls4/h0;->b:Ls4/i0;

    invoke-direct {p0, p2}, Ls4/t0;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls4/h0;->b:Ls4/i0;

    iget-object v0, v0, Ls4/i0;->b:Ls4/ca;

    invoke-interface {v0, p1}, Ls4/ca;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
