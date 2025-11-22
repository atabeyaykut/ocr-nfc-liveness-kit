.class public final Lz7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/g;


# instance fields
.field public final a:Lp4/rb;


# direct methods
.method public constructor <init>(Lp4/rb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/j;->a:Lp4/rb;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lz7/j;->a:Lp4/rb;

    iget v0, v0, Lp4/rb;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lz7/j;->a:Lp4/rb;

    iget v0, v0, Lp4/rb;->d:I

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz7/j;->a:Lp4/rb;

    iget-object v0, v0, Lp4/rb;->b:Ljava/lang/String;

    return-object v0
.end method
