.class public final Lnc/b2;
.super Lp9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnc/b2$a;
    }
.end annotation


# static fields
.field public static final b:Lnc/b2$a;


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/b2$a;

    invoke-direct {v0}, Lnc/b2$a;-><init>()V

    sput-object v0, Lnc/b2;->b:Lnc/b2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnc/b2;->b:Lnc/b2$a;

    invoke-direct {p0, v0}, Lp9/a;-><init>(Lp9/f$c;)V

    return-void
.end method
