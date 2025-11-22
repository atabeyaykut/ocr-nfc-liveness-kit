.class public final Lr0/d1;
.super Lr0/b;
.source "SourceFile"


# static fields
.field public static final b:Lr0/d1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0/d1;

    invoke-direct {v0}, Lr0/d1;-><init>()V

    sput-object v0, Lr0/d1;->b:Lr0/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr0/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method
