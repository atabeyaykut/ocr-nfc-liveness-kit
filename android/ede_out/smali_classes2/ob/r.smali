.class public final Lob/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/l<",
        "Lma/b;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc6/a;

.field public final synthetic b:Lma/b;


# direct methods
.method public constructor <init>(Lob/m;Lma/b;)V
    .locals 0

    iput-object p1, p0, Lob/r;->a:Lc6/a;

    iput-object p2, p0, Lob/r;->b:Lma/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lma/b;

    .line 2
    .line 3
    iget-object v0, p0, Lob/r;->a:Lc6/a;

    .line 4
    .line 5
    iget-object v1, p0, Lob/r;->b:Lma/b;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lc6/a;->o(Lma/b;Lma/b;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 11
    .line 12
    return-object p1
.end method
