.class public final Lh5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/h;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lh5/z;

    invoke-direct {v0}, Lh5/z;-><init>()V

    iput-object v0, p0, Lh5/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lh5/l;)V
    .locals 0

    iput-object p1, p0, Lh5/q;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh5/l;

    .line 4
    .line 5
    iget-object v0, v0, Lh5/l;->a:Lh5/z;

    .line 6
    .line 7
    invoke-virtual {v0}, Lh5/z;->s()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lh5/q;->a:Ljava/lang/Object;

    check-cast v0, Lh5/z;

    invoke-virtual {v0}, Lh5/z;->l()Z

    move-result v0

    return v0
.end method
