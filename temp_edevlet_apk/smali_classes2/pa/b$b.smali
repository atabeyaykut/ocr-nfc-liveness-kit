.class public final Lpa/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/b;-><init>(Lbc/l;Llb/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Lvb/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/b;


# direct methods
.method public constructor <init>(Lpa/b;)V
    .locals 0

    iput-object p1, p0, Lpa/b$b;->a:Lpa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lvb/g;

    iget-object v1, p0, Lpa/b$b;->a:Lpa/b;

    invoke-virtual {v1}, Lpa/b;->C0()Lvb/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lvb/g;-><init>(Lvb/i;)V

    return-object v0
.end method
