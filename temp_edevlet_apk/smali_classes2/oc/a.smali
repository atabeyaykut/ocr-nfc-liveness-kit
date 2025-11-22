.class public final Loc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnc/i;

.field public final synthetic b:Loc/c;


# direct methods
.method public constructor <init>(Lnc/j;Loc/c;)V
    .locals 0

    iput-object p1, p0, Loc/a;->a:Lnc/i;

    iput-object p2, p0, Loc/a;->b:Loc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Ll9/m;->a:Ll9/m;

    iget-object v1, p0, Loc/a;->a:Lnc/i;

    iget-object v2, p0, Loc/a;->b:Loc/c;

    invoke-interface {v1, v2, v0}, Lnc/i;->j(Lnc/y;Ll9/m;)V

    return-void
.end method
