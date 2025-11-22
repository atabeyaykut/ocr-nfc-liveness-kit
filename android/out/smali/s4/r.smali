.class public final Ls4/r;
.super Lp4/h0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ls4/x;


# direct methods
.method public constructor <init>(Ls4/x;)V
    .locals 0

    iput-object p1, p0, Ls4/r;->f:Ls4/x;

    invoke-direct {p0, p1}, Lp4/h0;-><init>(Ls4/x;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls4/r;->f:Ls4/x;

    iget-object v0, v0, Ls4/x;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
