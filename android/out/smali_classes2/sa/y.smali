.class public final Lsa/y;
.super Lsa/f;
.source "SourceFile"

# interfaces
.implements Lcb/o;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Llb/f;)V
    .locals 0

    invoke-direct {p0, p2}, Lsa/f;-><init>(Llb/f;)V

    iput-object p1, p0, Lsa/y;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsa/y;->b:Ljava/lang/Object;

    return-object v0
.end method
